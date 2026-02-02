#!/bin/bash
# フィードバックシステム用プロキシサーバーを起動するスクリプト
# 使用方法: ./scripts/start-feedback.sh
#
# このスクリプトは以下を行います:
# 1. Marpサーバーを起動（ポート3333）
# 2. フィードバックシステム用プロキシサーバーを起動（ポート8888）
#    - /marp/* へのリクエストをMarpサーバーに転送
#    - それ以外は静的ファイルを提供

set -e

FEEDBACK_PORT="${FEEDBACK_PORT:-8888}"
MARP_PORT="${MARP_PORT:-3333}"
FEEDBACK_PID_FILE="/tmp/feedback-server.pid"

# プロジェクトルートに移動
cd "$(dirname "$0")/.."

# 既存のフィードバックサーバーがあれば停止
if [ -f "$FEEDBACK_PID_FILE" ]; then
    OLD_PID=$(cat "$FEEDBACK_PID_FILE")
    if kill -0 "$OLD_PID" 2>/dev/null; then
        echo "既存のフィードバックサーバー(PID: $OLD_PID)を停止します..."
        kill "$OLD_PID" 2>/dev/null || true
        sleep 1
    fi
    rm -f "$FEEDBACK_PID_FILE"
fi

# Marpサーバーを起動（既に起動していなければ）
if ! curl -s "http://localhost:$MARP_PORT" > /dev/null 2>&1; then
    echo "Marpサーバーを起動します..."
    ./scripts/start-server.sh slides
    sleep 2
fi

echo ""
echo "フィードバックシステムサーバーを起動します..."
echo "  ディレクトリ: tools/feedback"
echo "  ポート: $FEEDBACK_PORT"
echo "  Marpプロキシ: /marp/* -> localhost:$MARP_PORT"

# プロキシサーバーをバックグラウンドで起動
MARP_PORT=$MARP_PORT FEEDBACK_PORT=$FEEDBACK_PORT python3 tools/feedback/server.py &
SERVER_PID=$!

# PIDを保存
echo "$SERVER_PID" > "$FEEDBACK_PID_FILE"

# サーバーが起動するまで待機
echo "サーバーの起動を待機中..."
for i in {1..10}; do
    if curl -s "http://localhost:$FEEDBACK_PORT" > /dev/null 2>&1; then
        echo ""
        echo "========================================"
        echo "フィードバックシステムが起動しました!"
        echo "========================================"
        echo ""
        echo "  URL: http://localhost:$FEEDBACK_PORT"
        echo "  PID: $SERVER_PID"
        echo ""
        echo "ブラウザで上記URLを開いてください。"
        echo "停止するには: kill $SERVER_PID"
        exit 0
    fi
    sleep 0.5
done

echo "エラー: サーバーの起動がタイムアウトしました"
kill "$SERVER_PID" 2>/dev/null || true
rm -f "$FEEDBACK_PID_FILE"
exit 1
