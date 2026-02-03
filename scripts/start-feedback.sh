#!/bin/bash
# フィードバックシステム用プロキシサーバーを起動するスクリプト
# 使用方法: ./scripts/start-feedback.sh
#
# 1. Marpサーバーを起動（ポート3333）
# 2. フィードバックシステム用プロキシサーバーを起動（ポート8888）

set -e

SCRIPT_DIR="$(dirname "$0")"
source "$SCRIPT_DIR/common.sh"

FEEDBACK_PORT="${FEEDBACK_PORT:-8888}"
MARP_PORT="${MARP_PORT:-3333}"
FEEDBACK_PID_FILE="/tmp/feedback-server.pid"

# プロジェクトルートに移動
cd "$SCRIPT_DIR/.."

# 既存のフィードバックサーバーを停止
stop_server_if_running "$FEEDBACK_PID_FILE" "フィードバックサーバー"

# Marpサーバーを起動（未起動の場合）
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
echo "$SERVER_PID" > "$FEEDBACK_PID_FILE"

# サーバーの起動を待機
if wait_for_server "http://localhost:$FEEDBACK_PORT" 10 "$FEEDBACK_PID_FILE" "$SERVER_PID"; then
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

exit 1
