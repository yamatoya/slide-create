#!/bin/bash
# サーバー停止とスクリーンショットのクリーンアップ
# 使用方法: ./scripts/cleanup.sh

set -e

PID_FILE="/tmp/marp-server.pid"
SCREENSHOT_DIR="/tmp/slide-screenshots"

echo "クリーンアップを実行します..."

# サーバーを停止
if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if kill -0 "$PID" 2>/dev/null; then
        echo "Marpサーバー(PID: $PID)を停止します..."
        kill "$PID" 2>/dev/null || true
        sleep 1
        # 強制終了が必要な場合
        if kill -0 "$PID" 2>/dev/null; then
            kill -9 "$PID" 2>/dev/null || true
        fi
    fi
    rm -f "$PID_FILE"
    echo "サーバーを停止しました"
else
    echo "実行中のサーバーはありません"
fi

# スクリーンショットを削除（オプション）
if [ "$1" = "--all" ]; then
    if [ -d "$SCREENSHOT_DIR" ]; then
        echo "スクリーンショットを削除します: $SCREENSHOT_DIR"
        rm -rf "$SCREENSHOT_DIR"
    fi
fi

echo "クリーンアップ完了"
