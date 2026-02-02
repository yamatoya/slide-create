#!/bin/bash
# agent-browserを使ってスライドのスクリーンショットを撮影
# 使用方法: ./scripts/take-screenshots.sh [slide-count] [output-dir]

set -e

SLIDE_COUNT="${1:-5}"
OUTPUT_DIR="${2:-/tmp/slide-screenshots}"
PORT="${MARP_PORT:-3333}"
BASE_URL="http://localhost:$PORT"

# 出力ディレクトリを作成
mkdir -p "$OUTPUT_DIR"

# 既存のスクリーンショットを削除
rm -f "$OUTPUT_DIR"/slide-*.png

echo "スクリーンショットを撮影します..."
echo "  スライド数: $SLIDE_COUNT"
echo "  出力先: $OUTPUT_DIR"

# agent-browserでスクリーンショットを撮影
# Marpのスライドは #1, #2, ... のハッシュでページ移動
for i in $(seq 1 "$SLIDE_COUNT"); do
    URL="$BASE_URL/#$i"
    OUTPUT_FILE="$OUTPUT_DIR/slide-$(printf '%02d' $i).png"

    echo "撮影中: スライド $i -> $OUTPUT_FILE"

    # agent-browserでスクリーンショット撮影
    agent-browser screenshot "$URL" --output "$OUTPUT_FILE" --width 1280 --height 720 --wait 1000 2>/dev/null || {
        # フォールバック: Playwrightを直接使用
        npx playwright screenshot "$URL" "$OUTPUT_FILE" --viewport-size="1280,720" 2>/dev/null || {
            echo "警告: スライド $i の撮影に失敗しました"
            continue
        }
    }
done

echo ""
echo "撮影完了: $OUTPUT_DIR"
ls -la "$OUTPUT_DIR"/slide-*.png 2>/dev/null || echo "スクリーンショットが見つかりません"
