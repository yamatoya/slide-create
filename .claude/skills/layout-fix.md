# layout-fix

Marpスライドのレイアウト崩れを検出し自動修正するスキル。

## 概要

Tailwind CSSでスライドを作ると、コード上は正しく見えても実際にレンダリングすると
要素がはみ出したり、重なったりすることがある。このスキルはPlaywrightベースの
ブラウザ自動化でスクリーンショットを撮影し、視覚的にレイアウト崩れを検出・修正する。

## 前提条件

- `agent-browser` または `npx playwright` が利用可能であること
- `npx @marp-team/marp-cli` が利用可能であること

## 実行手順

### Step 1: サーバー起動

```bash
./scripts/start-server.sh slides/example.md
```

- 指定したスライドのプレビューサーバーを起動
- デフォルトポート: 8080
- PIDは `/tmp/marp-server.pid` に保存

### Step 2: スクリーンショット撮影

```bash
./scripts/take-screenshots.sh 10 /tmp/slide-screenshots
```

- 引数1: 撮影するスライド数（デフォルト: 5）
- 引数2: 出力ディレクトリ（デフォルト: /tmp/slide-screenshots）
- 出力: `slide-01.png`, `slide-02.png`, ...

### Step 3: 画像を確認してレイアウト崩れを検出

Readツールでスクリーンショットを読み込み、以下を確認する：

```
Read /tmp/slide-screenshots/slide-01.png
Read /tmp/slide-screenshots/slide-02.png
...
```

**チェックポイント:**
- [ ] テキストがスライド外にはみ出していないか
- [ ] 要素同士が重なっていないか
- [ ] パネルやカードの配置が崩れていないか
- [ ] 余白が適切に確保されているか
- [ ] フォントサイズが読みやすいか

### Step 4: 修正を適用

検出した問題に対して、以下の修正を行う：

| 問題 | 修正方法 |
|------|---------|
| テキストはみ出し | `text-em-lg` → `text-em-base` にサイズダウン |
| 要素の重なり | `gap-4` → `gap-2` で間隔調整、または項目数削減 |
| パネル崩れ | `p-6` → `p-4` でパディング調整 |
| 余白不足 | `mt-8` → `mt-4` でマージン調整 |
| 4カラム以上 | 3カラムに減らすか、2段構成に変更 |

### Step 5: クリーンアップ

```bash
./scripts/cleanup.sh
```

- Marpサーバーを停止
- `--all` オプションでスクリーンショットも削除

## よくあるレイアウト問題と解決策

### 1. 長いテキストがはみ出す

```html
<!-- Before: はみ出す -->
<p class="text-em-lg">非常に長いテキストが入る場合...</p>

<!-- After: サイズを下げる -->
<p class="text-em-base">非常に長いテキストが入る場合...</p>
```

### 2. 3カラムで要素が詰まりすぎ

```html
<!-- Before: 詰まりすぎ -->
<div class="grid grid-cols-3 gap-6">

<!-- After: 間隔を狭める -->
<div class="grid grid-cols-3 gap-4">
```

### 3. パネル内の要素が溢れる

```html
<!-- Before: 溢れる -->
<div class="bg-gray-50 rounded-xl p-6">

<!-- After: パディングを減らす -->
<div class="bg-gray-50 rounded-xl p-4">
```

### 4. 縦に要素が多すぎて収まらない

```html
<!-- Before: 5項目で溢れる -->
<div class="space-y-6">

<!-- After: 間隔を詰める -->
<div class="space-y-3">
```

## スクリプト一覧

| スクリプト | 説明 |
|-----------|------|
| `scripts/start-server.sh` | Marpプレビューサーバーを起動 |
| `scripts/take-screenshots.sh` | スクリーンショットを撮影 |
| `scripts/cleanup.sh` | サーバー停止とクリーンアップ |

## 使用例

```
/layout-fix slides/internal-study-202602/slide.md
```

→ サーバー起動 → スクリーンショット撮影 → 画像確認 → 修正 → クリーンアップ
