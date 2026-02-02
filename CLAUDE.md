# CLAUDE.md

このファイルはClaude Codeがこのリポジトリで作業する際のガイダンスを提供します。

## プロジェクト概要

Marpを使用してプレゼンテーション資料を作成するためのプロジェクトです。
複数のイベント・発表用スライドを一元管理できます。

## 作業ルール

### タスクの進め方

1. **タスクの分解**: 指示を受けたら、やるべきことを細かいステップに分解する
2. **段階的な実行**: ステップを1つずつ順番に実行する
3. **記録の更新**: 対応完了後、このCLAUDE.mdに仕様や記録すべき情報を残す

### CLAUDE.mdの更新ルール

- 単なる追記ではなく、既存の内容と今回の対応を踏まえて全体として正しい内容を維持する
- 矛盾する情報があれば最新の状態に修正する
- 不要になった情報は削除または更新する

## 技術スタック

- **Marp CLI** (`@marp-team/marp-cli`): Markdownからスライドを生成
- **Tailwind CSS** (v3.0.16): ユーティリティファーストCSSフレームワーク（CDN版）

## プロジェクト構造

```
slide-create/
├── CLAUDE.md           # このファイル
├── package.json        # 依存関係とnpmスクリプト
├── .marprc.yml         # Marp共通設定
├── .gitignore
├── docs/               # ドキュメント
│   └── style-guide.md  # スライドデザインのスタイルガイド
├── sample/             # 参考スライド（PDF）
├── themes/             # テーマ関連
│   ├── custom.css      # カスタムテーマ（theme: customで使用）
│   └── js/             # JavaScriptライブラリ
│       ├── tailwindcss-3.0.16.js  # Tailwind CSS
│       └── tailwind.config.js     # Tailwind設定
├── slides/             # スライド本体（イベント単位で管理）
│   ├── {event-name}/   # 例: go-conference-2026
│   │   ├── slide.md    # スライド本体
│   │   └── images/     # このスライド専用の画像
│   └── ...
└── dist/               # 出力先（HTML/PDF）- gitignore対象
```

## 使い方

### セットアップ

```bash
npm install
```

### コマンド

| コマンド | 説明 |
|---------|------|
| `npm run preview` | スライドをプレビュー |
| `npm run build` | 全スライドをHTMLにビルド |
| `npm run build:pdf` | 全スライドをPDFにビルド |
| `npm run watch` | ファイル変更を監視して自動ビルド |

### 新しいスライドの作成

1. `slides/` 配下にイベント名のディレクトリを作成
   - 命名規則: `{イベント名}-{年}` または `{イベント名}-{年月}`
   - 例: `go-conference-2026`, `internal-study-202602`
2. `slide.md` を作成
3. 必要に応じて `images/` ディレクトリを作成して画像を配置

### スライドのテンプレート

新しいスライドを作成する際は、フロントマターの直後にTailwind CSSを読み込む：

```markdown
---
marp: true
theme: default
paginate: true
---

<script src="../../themes/js/tailwind.config.js"></script>
<script src="../../themes/js/tailwindcss-3.0.16.js"></script>

# タイトル
```

**注意**: `preflight: false`が設定されているため、Marpのデフォルトスタイルと競合しません。

## スキル

| スキル | 説明 |
|--------|------|
| `slide-style-rector` | スライドをスタイルガイドに基づいて整形する |
| `layout-fix` | スクリーンショットでレイアウト崩れを検出・修正する |
| `feedback` | Webベースのフィードバックシステムでレビュー |

スキルファイルは `.claude/skills/` に配置。

### スクリプト

| スクリプト | 説明 |
|-----------|------|
| `scripts/start-server.sh` | Marpプレビューサーバーを起動 |
| `scripts/take-screenshots.sh` | スクリーンショットを撮影 |
| `scripts/cleanup.sh` | サーバー停止とクリーンアップ |

### ツール

| ツール | 説明 |
|--------|------|
| `tools/feedback/index.html` | スライドフィードバックUI |

## 現在のスライド一覧

| ディレクトリ | 説明 |
|-------------|------|
| `example.md` | レイアウトパターンのサンプル集（40種類） |
| `go-conference-2026` | Go Conference 2026用（サンプル） |
| `internal-study-202602` | 社内勉強会2026年2月用（サンプル） |

## 作業履歴

### 2026-02-02
- CLAUDE.mdを作成し、プロジェクトの基本ルールを設定
- Marpプロジェクトの初期構築
  - package.json作成（@marp-team/marp-cli導入）
  - ディレクトリ構造を設計・作成
  - 共通設定（.marprc.yml）とカスタムテーマを作成
  - サンプルスライドを2つ作成（GoConference、社内勉強会）
- Tailwind CSSを追加
  - tailwindcss-3.0.16.jsをダウンロード（公式CDNより）
  - tailwind.config.jsを作成（カスタムカラー・フォント設定）
- ディレクトリ構造を整理
  - assetsディレクトリを削除
  - Tailwind関連ファイルをthemes/js/に移動
- Tailwind CSSをMarpスライドに統合
  - tailwind.config.jsにpreflight: falseを設定
  - 全スライドにTailwind CSS読み込みスクリプトを追加
- サンプルPDFのデザインパターン分析
  - sample/配下のPDFスライドを分析
  - docs/style-guide.mdを作成
  - カラーパレット、フォントサイズ、レイアウトパターン、パネルデザインを文書化
  - Tailwind CSSクラス例とカスタムカラー定義を追加
- レイアウトパターンサンプル集を作成
  - slides/example.mdを作成（40種類のパターン）
  - A. タイトル・セクション系（5種）
  - B. カラムレイアウト系（8種）
  - C. 縦並びリスト系（4種）
  - D. パネルデザイン系（5種）
  - E. 背景・画像系（4種）
  - F. 強調・特殊系（3種）
  - G. 応用パターン（10種）
- デザインパターンの改善
  - グラデーション背景を`_backgroundImage`形式に統一
  - パネルに`rounded-xl` + `shadow`を適用
  - フォントサイズを`text-em-*`クラスに統一
- slide-style-rectorスキルを作成
  - `.claude/skills/slide-style-rector.md`に配置
  - 40種類のパターンを活用してスライドを整形
- layout-fixスキルを作成
  - `.claude/skills/layout-fix.md`に配置
  - Playwrightでスクリーンショット撮影してレイアウト崩れを検出・修正
  - `scripts/`にサーバー起動・撮影・クリーンアップ用スクリプトを追加
- feedbackシステムを作成
  - `tools/feedback/index.html` - Webベースのフィードバック UI
  - `.claude/skills/feedback.md` - スキル定義
  - スライドプレビュー、コメント管理、クイックアクション、レイアウト選択モーダル
  - JSON出力でClaude Codeへの指示を効率化
