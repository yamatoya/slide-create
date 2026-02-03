#!/bin/bash
# Playwrightを使ってスライドのスクリーンショットを撮影
# 使用方法: ./scripts/take-screenshots.sh [slide-count] [output-dir]

set -e

SLIDE_COUNT="${1:-5}"
OUTPUT_DIR="${2:-/tmp/slide-screenshots}"
PORT="${MARP_PORT:-3333}"
BASE_URL="http://localhost:$PORT"

mkdir -p "$OUTPUT_DIR"
rm -f "$OUTPUT_DIR"/slide-*.png

echo "スクリーンショットを撮影します..."
echo "  スライド数: $SLIDE_COUNT"
echo "  出力先: $OUTPUT_DIR"

for i in $(seq 1 "$SLIDE_COUNT"); do
    output_file="$OUTPUT_DIR/slide-$(printf '%02d' "$i").png"
    echo "撮影中: スライド $i -> $output_file"

    npx playwright screenshot "$BASE_URL/#$i" "$output_file" --viewport-size="1280,720" 2>/dev/null || {
        echo "警告: スライド $i の撮影に失敗しました"
    }
done

echo ""
echo "撮影完了: $OUTPUT_DIR"
ls -la "$OUTPUT_DIR"/slide-*.png 2>/dev/null || echo "スクリーンショットが見つかりません"
