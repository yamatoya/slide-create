#!/bin/bash
# Marpプレビューサーバーを起動するスクリプト
# 使用方法: ./scripts/start-server.sh [slide-path-or-dir]

set -e

SLIDE_PATH="${1:-slides}"
PORT="${MARP_PORT:-3333}"
PID_FILE="/tmp/marp-server.pid"

# 既存のサーバーがあれば停止
if [ -f "$PID_FILE" ]; then
    OLD_PID=$(cat "$PID_FILE")
    if kill -0 "$OLD_PID" 2>/dev/null; then
        echo "既存のサーバー(PID: $OLD_PID)を停止します..."
        kill "$OLD_PID" 2>/dev/null || true
        sleep 1
    fi
    rm -f "$PID_FILE"
fi

# プロジェクトルートに移動
cd "$(dirname "$0")/.."

# ファイルが指定された場合はディレクトリを取得
if [ -f "$SLIDE_PATH" ]; then
    SLIDE_DIR=$(dirname "$SLIDE_PATH")
else
    SLIDE_DIR="$SLIDE_PATH"
fi

echo "Marpサーバーを起動します..."
echo "  ディレクトリ: $SLIDE_DIR"
echo "  ポート: $PORT"

# バックグラウンドでサーバー起動（PORTは環境変数で指定）
PORT=$PORT npx @marp-team/marp-cli --server "$SLIDE_DIR" &
SERVER_PID=$!

# PIDを保存
echo "$SERVER_PID" > "$PID_FILE"

# サーバーが起動するまで待機
echo "サーバーの起動を待機中..."
for i in {1..30}; do
    if curl -s "http://localhost:$PORT" > /dev/null 2>&1; then
        echo "サーバーが起動しました: http://localhost:$PORT"
        echo "PID: $SERVER_PID"
        exit 0
    fi
    sleep 0.5
done

echo "エラー: サーバーの起動がタイムアウトしました"
kill "$SERVER_PID" 2>/dev/null || true
rm -f "$PID_FILE"
exit 1
