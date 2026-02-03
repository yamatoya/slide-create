#!/bin/bash
# Marpプレビューサーバーを起動するスクリプト
# 使用方法: ./scripts/start-server.sh [slide-path-or-dir]

set -e

SCRIPT_DIR="$(dirname "$0")"
source "$SCRIPT_DIR/common.sh"

SLIDE_PATH="${1:-slides}"
PORT="${MARP_PORT:-3333}"
PID_FILE="/tmp/marp-server.pid"

# 既存のサーバーを停止
stop_server_if_running "$PID_FILE" "Marpサーバー"

# プロジェクトルートに移動
cd "$SCRIPT_DIR/.."

# ファイルが指定された場合はディレクトリを取得
if [ -f "$SLIDE_PATH" ]; then
    SLIDE_DIR=$(dirname "$SLIDE_PATH")
else
    SLIDE_DIR="$SLIDE_PATH"
fi

echo "Marpサーバーを起動します..."
echo "  ディレクトリ: $SLIDE_DIR"
echo "  ポート: $PORT"

# バックグラウンドでサーバー起動
PORT=$PORT npx @marp-team/marp-cli --server "$SLIDE_DIR" &
SERVER_PID=$!
echo "$SERVER_PID" > "$PID_FILE"

# サーバーの起動を待機
if wait_for_server "http://localhost:$PORT" 30 "$PID_FILE" "$SERVER_PID"; then
    echo "サーバーが起動しました: http://localhost:$PORT"
    echo "PID: $SERVER_PID"
    exit 0
fi

exit 1
