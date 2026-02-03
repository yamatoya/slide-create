#!/bin/bash
# サーバー停止とスクリーンショットのクリーンアップ
# 使用方法: ./scripts/cleanup.sh [--all]

set -e

SCRIPT_DIR="$(dirname "$0")"
source "$SCRIPT_DIR/common.sh"

MARP_PID_FILE="/tmp/marp-server.pid"
FEEDBACK_PID_FILE="/tmp/feedback-server.pid"
SCREENSHOT_DIR="/tmp/slide-screenshots"

echo "クリーンアップを実行します..."

# サーバーを停止（強制終了付き）
stop_server_force() {
    local pid_file="$1"
    local server_name="$2"

    [ -f "$pid_file" ] || { echo "実行中の${server_name}はありません"; return 0; }

    local pid
    pid=$(cat "$pid_file")
    if kill -0 "$pid" 2>/dev/null; then
        echo "${server_name}(PID: $pid)を停止します..."
        kill "$pid" 2>/dev/null || true
        sleep 1
        # 強制終了が必要な場合
        if kill -0 "$pid" 2>/dev/null; then
            kill -9 "$pid" 2>/dev/null || true
        fi
        echo "${server_name}を停止しました"
    fi
    rm -f "$pid_file"
}

stop_server_force "$MARP_PID_FILE" "Marpサーバー"
stop_server_force "$FEEDBACK_PID_FILE" "フィードバックサーバー"

# スクリーンショットを削除（--all オプション時）
if [ "$1" = "--all" ] && [ -d "$SCREENSHOT_DIR" ]; then
    echo "スクリーンショットを削除します: $SCREENSHOT_DIR"
    rm -rf "$SCREENSHOT_DIR"
fi

echo "クリーンアップ完了"
