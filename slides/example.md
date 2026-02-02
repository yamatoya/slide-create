---
marp: true
theme: default
paginate: true
---

<script src="../themes/js/tailwind.config.js"></script>
<script src="../themes/js/tailwindcss-3.0.16.js"></script>

<!--
================================================================================
スライドレイアウト サンプル集
================================================================================

このファイルは、よく使うレイアウトパターンを網羅したサンプルです。
スライド作成時の参考としてご活用ください。

カテゴリ:
A. タイトル・セクション系（5種）
B. カラムレイアウト系（8種）
C. 縦並びリスト系（4種）
D. パネルデザイン系（5種）
E. 背景・画像系（4種）
F. 強調・特殊系（3種）
G. 応用パターン（10種）
================================================================================
-->

---

<!-- _class: lead -->
<!-- _backgroundColor: #1B4565 -->
<!-- _color: white -->

<div class="h-full flex flex-col justify-center">

# タイトルスライド

**サブタイトル・キャッチコピーをここに**

<div class="mt-16 text-right text-lg opacity-80">
株式会社サンプル 山田太郎
</div>

</div>

<!--
================================================================================
A-1. タイトルスライド
================================================================================
用途: プレゼンテーションの表紙
デザインポイント:
- 背景はプライマリグラデーション（濃紺→ティール）
- タイトルは大きく中央配置
- サブタイトルは控えめに
- 発表者名は右下に配置
-->

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center">

# セクション開始

**歴史が教える技術革新と仕事の関係**

</div>

<!--
================================================================================
A-2. グラデーション背景セクション
================================================================================
用途: 章の切り替わりに使うインパクトのあるパターン
デザインポイント:
- _backgroundImage でグラデーションを指定
- _color: #fff で白文字
- シンプルにタイトルとサブテキストのみ
- 余白を十分に取る
-->

---

<!-- _backgroundColor: #E8F5F0 -->

<div class="h-full flex flex-col justify-center px-12">

# ここまでのまとめ

<div class="mt-8 space-y-4">
<div class="bg-white/80 rounded-lg p-5 border-l-4 border-[#3E9BA4]">

**1. 技術革新は仕事を奪うのではなく変化させる**

</div>
<div class="bg-white/80 rounded-lg p-5 border-l-4 border-[#3E9BA4]">

**2. ソフトウェアは安くなり続けるが、需要も拡大する**

</div>
<div class="bg-white/80 rounded-lg p-5 border-l-4 border-[#3E9BA4]">

**3. 文字の民主化と同じパターンがソフトウェアで起きている**

</div>
</div>

<div class="mt-8 bg-white rounded-lg p-5">

では、具体的にエンジニアの仕事はどう変わるのでしょうか

</div>

</div>

<!--
================================================================================
A-3. セクション終了・まとめ
================================================================================
用途: セクションの要点をまとめる
デザインポイント:
- 淡いグラデーション背景
- 番号付きで要点を整理
- 次への導入を最下部に配置
-->

---

# 今日お話しすること

<div class="mt-8 space-y-6">

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#1B4565]">

### AIは仕事を"消す"のではなく、変える

歴史的パターンから見る仕事の変化と、エンジニアの役割シフト

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### AI時代の新しい生産性

できる化・自働化・自創化という段階的変化

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### 選ばれるエンジニアになるための行動指針

相対優位、ジョブクラフティング、ソロプレナー、3つのC

</div>

</div>

<!--
================================================================================
A-4. 目次スライド
================================================================================
用途: アジェンダ・目次の表示
デザインポイント:
- 左ボーダーで視覚的な階層を表現
- 各項目にタイトルと説明を配置
- 余白を十分に確保
-->

---

<!-- _backgroundColor: #1B4565 -->
<!-- _color: white -->

<div class="h-full flex flex-col justify-center items-center text-center">

# ご清聴ありがとうございました

<div class="mt-12 text-xl opacity-80">
質問があればどうぞ！
</div>

</div>

<!--
================================================================================
A-5. クロージングスライド
================================================================================
用途: プレゼンテーションの締め
デザインポイント:
- タイトルスライドと同様の背景
- シンプルに感謝のメッセージ
- 質疑応答への誘導
-->

---

# 2カラム比較（期待 vs 現実）

**現実を直視することが、戦略の第一歩**

<div class="grid grid-cols-2 gap-6 mt-6 text-base">

<div class="bg-gray-50 rounded-xl shadow-lg p-6 border-l-4 border-gray-400">
<h1 class="text-em-2xl font-bold mb-4 text-gray-800">期待</h1>
<ul class="text-em-lg space-y-3 text-gray-700">
<li>AIエージェントで10倍以上の生産性</li>
<li>開発チームは少人数で十分</li>
<li>すべてが自動化される</li>
</ul>
</div>

<div class="bg-gray-100 rounded-xl shadow-lg p-6 border-l-4 border-gray-500">
<h1 class="text-em-2xl font-bold mb-4 text-gray-800">現実</h1>
<ul class="text-em-lg space-y-3 text-gray-700">
<li>多くの企業では2-3倍程度</li>
<li>人間の判断は依然として重要</li>
<li>本質的複雑性は残る</li>
</ul>
</div>

</div>

<!--
================================================================================
B-6. 2カラム比較（期待 vs 現実）
================================================================================
用途: 変化や対比を示す
デザインポイント:
- rounded-xl で柔らかい印象
- shadow-lg で立体感
- text-em-* クラスでフォントサイズを統一
- グレー系ボーダーで控えめな区別
- 背景色を微妙に変えて左右を区別
-->

---

# 2カラム対比

**人間が担うべき領域が「実装」から「問題設定」へシフト**

<div class="grid grid-cols-2 gap-8 mt-8">

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#1B4565]">

### 偶有的複雑性（実装）

- 実装に伴う技術的複雑さ
- バグやパフォーマンス問題
- 技術で削減可能

→ **AIが得意・大幅に高速化**

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### 本質的複雑性（問題設定）

- 問題領域そのものの複雑さ
- 人間の要求の曖昧さ
- 技術では解決できない

→ **AIでも高速化困難**

</div>

</div>

<!--
================================================================================
B-7. 2カラム対比
================================================================================
用途: 2つの概念の対比
デザインポイント:
- 左ボーダーで区別
- 結論を太字で強調
- サブ見出しで明確に分類
-->

---

# 3カラムレイアウト（等幅）

**主体性を持って仕事の境界を拡張・変更する**

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="bg-gray-50 rounded-lg p-5">

### タスクの境界

何をやる/やらないを変える

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 関係の境界

誰と働くかを変える

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 認知の境界

仕事の意味づけを変える

</div>

</div>

<!--
================================================================================
B-8. 3カラムレイアウト（等幅）
================================================================================
用途: 3つの概念を並列表示
デザインポイント:
- 等幅で並べる
- シンプルなパネルスタイル
- 見出し＋説明の構成
-->

---

# 3カラム（アクセントカラー）

**AI時代に必要な能力は3つのCに集約される**

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="bg-[#E8F5F5] rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">Craft</h3>
<p class="text-em-lg font-bold text-[#3E9BA4]">手触り感</p>
<p class="text-em-base text-gray-700 mt-2">AI技術を試行錯誤しながら使いこなす実践知</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">Concept</h3>
<p class="text-em-lg font-bold text-[#1B4565]">本質的問い</p>
<p class="text-em-base text-gray-700 mt-2">AIが苦手な本質的な問いや価値を生み出す思考</p>
</div>

<div class="bg-[#E8F5F5] rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">Communication</h3>
<p class="text-em-lg font-bold text-[#3E9BA4]">対話力</p>
<p class="text-em-base text-gray-700 mt-2">新しい視点を取り入れ、人々との対話から価値を創造</p>
</div>

</div>

<!--
================================================================================
B-9. 3カラム（アクセントカラー）
================================================================================
用途: 重要な概念を強調して並列表示
デザインポイント:
- rounded-xl + shadow で立体感
- text-em-2xl で英語キーワードを強調
- text-em-lg でサブタイトル
- text-em-base で説明文
-->

---

# 4カラムレイアウト

**効率化で生まれた時間が「どこかに消える」**

<div class="grid grid-cols-4 gap-4 mt-8">

<div class="bg-gray-50 rounded-lg p-4">

### 罠1：早く帰ることへの罪悪感

「みんなまだ働いているし…」という心理で席に座って時間を潰す

</div>

<div class="bg-gray-50 rounded-lg p-4">

### 罠2：タスクの無限増殖

「時間があるなら、これもやって」と価値の低い仕事が増える

</div>

<div class="bg-gray-50 rounded-lg p-4">

### 罠3：品質の過剰追求

80点で十分な資料を95点まで磨き上げる（追加の15点は無価値）

</div>

<div class="bg-gray-50 rounded-lg p-4">

### 罠4：心地よい非効率

雑談、調査、ゆっくりランチ…個人には良いが企業価値につながらない

</div>

</div>

<!--
================================================================================
B-10. 4カラムレイアウト
================================================================================
用途: 4つの項目を並列表示（罠、ステップなど）
デザインポイント:
- コンパクトなパネル
- 見出しで内容を要約
- 説明は簡潔に
-->

---

# 5カラム（成熟度レベル）

<div class="grid grid-cols-5 gap-3 mt-8">

<div class="bg-gray-100 rounded-lg p-4 text-center">

### Level 1
**初期**

プロセスが未定義

</div>

<div class="bg-gray-100 rounded-lg p-4 text-center">

### Level 2
**管理**

基本的な管理

</div>

<div class="bg-gray-200 rounded-lg p-4 text-center">

### Level 3
**定義**

標準化

</div>

<div class="bg-[#E8F5F5] rounded-lg p-4 text-center">

### Level 4
**定量**

測定・制御

</div>

<div class="bg-[#3E9BA4] text-white rounded-lg p-4 text-center">

### Level 5
**最適化**

継続的改善

</div>

</div>

<!--
================================================================================
B-11. 5カラム（成熟度レベル）
================================================================================
用途: 段階やレベルの表示
デザインポイント:
- 段階的に色を変化
- 最終段階はアクセントカラー
- 中央揃えで整える
-->

---

# 2x2グリッド

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#1B4565]">

### マクロの物語（惑わされない）

- 「日本は終わり」
- 「AIが仕事を奪う」
- 「エンジニアは不要になる」

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### ミクロの現実（ここに集中）

- 自分にとっての具体的チャンス
- 自分にとっての具体的リスク
- 競争相手はAIではなく**人と企業**

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#1B4565]">

### AIに任せる部分

- 単純作業
- 調査・情報収集
- 初期ドラフト作成
- 定型的なコード

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### 自分がやる部分

- 問題の発見・定義
- 価値判断・意思決定
- 問題を解決する仕組み自体を構築する

</div>

</div>

<!--
================================================================================
B-12. 2x2グリッド
================================================================================
用途: 4象限マトリクス
デザインポイント:
- 2行2列のグリッド
- 左ボーダーで分類を示す
- 対比関係を明確に
-->

---

# 2x3グリッド

**技術革新は常に雇用構造を変えてきた**

<div class="grid grid-cols-3 gap-4 mt-6">

<div class="bg-gray-50 rounded-lg p-5">

### ITバブル崩壊
**2000年代初頭**

インターネットの普及がレイオフの理由とされた

</div>

<div class="bg-gray-50 rounded-lg p-5">

### リーマンショック
**2008年**

スマートフォンの登場がレイオフの理由とされた

</div>

<div class="bg-[#3E9BA4] text-white rounded-lg p-5">

### 現在
**2023年〜**

AIがレイオフの理由とされている

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 非人間的な仕事の解放

技術は人類が望まない危険・単調・過酷な仕事を代替してきた

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 仕事内容の継続的変化

どの職業も時代とともに中身が変わり続けている

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 新しい仕事の創出

新技術は必ず新しい仕事を生み出し、生活を豊かにしてきた

</div>

</div>

<!--
================================================================================
B-13. 2x3グリッド
================================================================================
用途: 6つの項目を整理
デザインポイント:
- 2行3列のグリッド
- 重要な項目はアクセントカラー
- 時系列や対応関係を表現
-->

---

# ステップ表示

**段階的に生産性を高める**

<div class="mt-8 space-y-4">

<div class="flex items-start gap-4">
<div class="w-12 h-12 bg-[#1B4565] text-white rounded-full flex items-center justify-center text-xl font-bold shrink-0">1</div>
<div class="bg-gray-50 rounded-lg p-5 flex-1">

### できる化（頼む）

人がやっていた仕事を自分でできるようにする / 自分の仕事を人ができるようにする

</div>
</div>

<div class="flex items-start gap-4">
<div class="w-12 h-12 bg-[#3E9BA4] text-white rounded-full flex items-center justify-center text-xl font-bold shrink-0">2</div>
<div class="bg-gray-50 rounded-lg p-5 flex-1">

### 自働化（任せる）

ワークフローやAgenticな仕組みで仕事をAIに任せる / 不確実性の発生源を捉えて自働適応

</div>
</div>

<div class="flex items-start gap-4">
<div class="w-12 h-12 bg-[#1B4565] text-white rounded-full flex items-center justify-center text-xl font-bold shrink-0">3</div>
<div class="bg-gray-50 rounded-lg p-5 flex-1">

### 自創化（指し示す）

仮説検証し、創造するフェーズも自動化 / 仕組み自体を構築する

</div>
</div>

</div>

<!--
================================================================================
C-14. ステップ表示
================================================================================
用途: 手順やプロセスの説明
デザインポイント:
- 番号を円形で強調
- 縦に並べて視線の流れを作る
- タイトルと説明を分離
-->

---

# タイムライン

<div class="mt-8">

<div class="relative pl-8 border-l-4 border-[#3E9BA4]">

<div class="mb-8 relative">
<div class="absolute -left-10 w-4 h-4 bg-[#3E9BA4] rounded-full"></div>

### 2008年
新卒第1期として株式会社ミクシィに入社

</div>

<div class="mb-8 relative">
<div class="absolute -left-10 w-4 h-4 bg-[#3E9BA4] rounded-full"></div>

### 2010年
メディア開発部長に就任

</div>

<div class="mb-8 relative">
<div class="absolute -left-10 w-4 h-4 bg-[#3E9BA4] rounded-full"></div>

### 2015年
株式会社レクターを創業

</div>

<div class="relative">
<div class="absolute -left-10 w-4 h-4 bg-[#1B4565] rounded-full"></div>

### 現在
技術組織のアドバイザリーとして多数の会社を支援

</div>

</div>

</div>

<!--
================================================================================
C-15. タイムライン
================================================================================
用途: 経歴や歴史の表示
デザインポイント:
- 縦線でつながりを表現
- 各ポイントを丸で示す
- 時系列で並べる
-->

---

# アイコン付きリスト

<div class="mt-8 space-y-6">

<div class="flex items-start gap-4">
<div class="w-16 h-16 bg-[#E8F5F5] rounded-full flex items-center justify-center shrink-0">
<span class="text-2xl">📊</span>
</div>
<div>

### データ分析

大量のデータから洞察を抽出し、意思決定を支援

</div>
</div>

<div class="flex items-start gap-4">
<div class="w-16 h-16 bg-[#E8F5F5] rounded-full flex items-center justify-center shrink-0">
<span class="text-2xl">🤖</span>
</div>
<div>

### 自動化

繰り返しタスクを自動化し、人間はより創造的な仕事に集中

</div>
</div>

<div class="flex items-start gap-4">
<div class="w-16 h-16 bg-[#E8F5F5] rounded-full flex items-center justify-center shrink-0">
<span class="text-2xl">💡</span>
</div>
<div>

### イノベーション

新しいアイデアの創出と迅速なプロトタイピング

</div>
</div>

</div>

<!--
================================================================================
C-16. アイコン付きリスト
================================================================================
用途: 機能やサービスの紹介
デザインポイント:
- アイコンを円形の背景に配置
- 左右のレイアウトで視認性向上
- 簡潔な説明文
-->

---

# 番号付きリスト（縦）

<div class="mt-8 space-y-4">

<div class="flex items-center gap-4 bg-gray-50 rounded-xl shadow p-5">
<span class="text-em-3xl font-bold text-[#1B4565]">90%</span>
<div>
<p class="text-em-lg font-bold">見るだけ</p>
<p class="text-em-base text-gray-600">情報を消費するだけの層</p>
</div>
</div>

<div class="flex items-center gap-4 bg-gray-50 rounded-xl shadow p-5">
<span class="text-em-3xl font-bold text-[#3E9BA4]">9%</span>
<div>
<p class="text-em-lg font-bold">たまに投稿</p>
<p class="text-em-base text-gray-600">時々アウトプットする層</p>
</div>
</div>

<div class="flex items-center gap-4 rounded-xl shadow-lg p-5"
     style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
<span class="text-em-3xl font-bold text-white">1%</span>
<div>
<p class="text-em-lg font-bold text-white">継続実践</p>
<p class="text-em-base text-white/80">継続的に発信・実践する層</p>
</div>
</div>

</div>

<div class="mt-6 bg-gray-100 rounded-xl shadow p-4">
<p class="text-em-lg font-bold">1%の継続実践者が最大の恩恵を受ける</p>
<p class="text-em-base text-gray-600">ハードルは意外に低い。「今すぐ始める」ことが決定的に重要。</p>
</div>

<!--
================================================================================
C-17. 番号付きリスト（縦）
================================================================================
用途: 統計データや割合の表示
デザインポイント:
- text-em-3xl で数値を大きく強調
- rounded-xl + shadow で立体感
- 最も重要な項目はグラデーション背景
- 結論を下部に配置
-->

---

# 基本パネル

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="bg-gray-50 rounded-lg p-6">

### 標準パネル

グレー背景のシンプルなパネル。
汎用的に使えるデザイン。

```
bg-gray-50 rounded-lg p-6
```

</div>

<div class="bg-gray-50 rounded-lg p-6 border-l-4 border-[#3E9BA4]">

### アクセントパネル

左ボーダーで強調。
重要な情報に使用。

```
border-l-4 border-[#3E9BA4]
```

</div>

</div>

<!--
================================================================================
D-18. 基本パネル
================================================================================
用途: 情報のグループ化
デザインポイント:
- 薄いグレー背景で白背景と区別
- 角丸で柔らかい印象
- 十分な内側余白
-->

---

# 強調パネル

<div class="mt-8">

<div class="bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-lg p-8">

## 重要なのは新しい技術にオープンマインドで向き合い、学び続けること

では、AIは本当に違うのでしょうか。歴史から学んでみましょう。

</div>

</div>

<div class="grid grid-cols-2 gap-6 mt-6">

<div class="bg-[#1B4565] text-white rounded-lg p-6">

### 濃紺背景

重要なメッセージや結論に使用

</div>

<div class="bg-[#3E9BA4] text-white rounded-lg p-6">

### ティール背景

アクションやポイントに使用

</div>

</div>

<!--
================================================================================
D-19. 強調パネル
================================================================================
用途: 重要なメッセージの強調
デザインポイント:
- グラデーション背景で目を引く
- 白文字で可読性確保
- 大きめの余白
-->

---

# ガラス風パネル（背景付き）

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="mt-8 space-y-6">

<div class="bg-white/20 backdrop-blur rounded-lg p-6">

### 今日の問いかけ

**「AIによって仕事は奪われるのか」**

</div>

<div class="bg-white/20 backdrop-blur rounded-lg p-6">

恐怖論でも楽観論でもない、**構造的な見取り図**を提示します。

</div>

</div>

<!--
================================================================================
D-20. ガラス風パネル
================================================================================
用途: 背景画像やグラデーション上でのテキスト表示
デザインポイント:
- 半透明の白背景
- backdrop-blurでぼかし効果
- 視認性を確保しつつ背景を活かす
-->

---

# 引用パネル

<div class="mt-8">

<div class="bg-white border-l-4 border-[#1B4565] rounded-r-lg p-6 italic">

「同じ場所にとどまるには全力で走り続けないといけない」

<div class="mt-4 text-right text-gray-600 not-italic">
— 赤の女王（『鏡の国のアリス』より）
</div>

</div>

</div>

<div class="mt-8">

<div class="bg-gray-50 border-l-4 border-[#3E9BA4] rounded-r-lg p-6">

「これからは無人機の時代だ。君たちパイロットは絶滅する」

「そうかもしれない。でも、今日じゃない」

<div class="mt-4 text-right text-gray-600">
— トップガン マーヴェリックより
</div>

</div>

</div>

<!--
================================================================================
D-21. 引用パネル
================================================================================
用途: 名言や参考文献の引用
デザインポイント:
- 左ボーダーで引用を示す
- イタリック体で区別
- 出典を右寄せ
-->

---

# カードグリッド

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="bg-white rounded-xl shadow-lg overflow-hidden">
<div class="bg-[#1B4565] text-white p-4">
<h3 class="text-em-xl font-bold">Cursor（Anysphere）</h3>
</div>
<div class="p-5">
<p class="text-em-2xl font-bold text-[#1B4565]">4人で年商140億円</p>
<p class="text-em-base text-gray-600 mt-2">AIコードエディタ</p>
</div>
</div>

<div class="bg-white rounded-xl shadow-lg overflow-hidden">
<div class="bg-[#3E9BA4] text-white p-4">
<h3 class="text-em-xl font-bold">Cognition AI（Devin）</h3>
</div>
<div class="p-5">
<p class="text-em-2xl font-bold text-[#3E9BA4]">約10人で企業価値2000億円</p>
<p class="text-em-base text-gray-600 mt-2">自律型AIエンジニア</p>
</div>
</div>

</div>

<!--
================================================================================
D-22. カードグリッド
================================================================================
用途: 事例やサービスの紹介
デザインポイント:
- rounded-xl + shadow-lg で立体感
- ヘッダーとボディを分離
- text-em-* でフォントサイズを統一
-->

---

<!-- _backgroundColor: #1B4565 -->
<!-- _color: white -->

<div class="h-full flex flex-col justify-center px-12">

# 全画面背景

<div class="mt-8 bg-white/20 backdrop-blur rounded-lg p-6">

背景を全面に使い、インパクトのあるスライドを作成。
重要なメッセージやセクション区切りに効果的。

</div>

</div>

<!--
================================================================================
E-23. 全画面背景
================================================================================
用途: インパクトのあるメッセージ
デザインポイント:
- 背景色を全面に
- テキストは中央または左寄せ
- ガラス風パネルと組み合わせ可能
-->

---

# 左テキスト・右画像

<div class="grid grid-cols-2 gap-8 mt-8">

<div>

## 自己紹介

### 広木 大地

**株式会社レクター代表取締役**

1983年生まれ。筑波大学大学院を卒業後、2008年に新卒第1期として株式会社ミクシィに入社

アーキテクトとして、技術戦略から組織構築などに携わる

一般社団法人日本CTO協会理事、朝日新聞社社外CTO。

</div>

<div class="bg-gray-100 rounded-lg flex items-center justify-center h-80">

**[画像エリア]**

プロフィール写真や
書籍カバーなど

</div>

</div>

<!--
================================================================================
E-24. 左テキスト・右画像
================================================================================
用途: 自己紹介やコンテンツ紹介
デザインポイント:
- テキストは左、ビジュアルは右
- 画像エリアは適切なサイズに
- 読む方向（左→右）に沿った配置
-->

---

# QRコード中央配置

<div class="h-80 flex flex-col items-center justify-center">

<div class="w-48 h-48 bg-gray-200 rounded-lg flex items-center justify-center mb-6">

**[QRコード]**

</div>

書籍「AIエージェント—人類と協働する機械」発売中

**https://www.amazon.co.jp/dp/4865944583**

</div>

<!--
================================================================================
E-25. QRコード中央配置
================================================================================
用途: リンクやリソースの共有
デザインポイント:
- QRコードを中央に大きく
- URL/タイトルを下に配置
- シンプルなレイアウト
-->

---

<!-- _backgroundColor: rgba(0,0,0,0.6) -->
<!-- _color: white -->

# 背景画像オーバーレイ

<div class="mt-8 space-y-6">

<div class="bg-white/90 text-gray-800 rounded-lg p-6">

「これからは無人機の時代だ。君たちパイロットは絶滅する」

「そうかもしれない。でも、今日じゃない」

</div>

<div class="bg-white/90 text-gray-800 rounded-lg p-6">

私たちエンジニアも同じ立場にいます。
この「今日じゃない」期間に、私たちは何をすべきでしょうか。

</div>

</div>

<!--
================================================================================
E-26. 背景画像オーバーレイ
================================================================================
用途: 映画のシーンや写真を背景に
デザインポイント:
- 暗いオーバーレイで可読性確保
- テキストは白いパネルに配置
- 視覚的なインパクト
-->

---

# 数値統計表示

**データを印象的に見せるパターン**

<div class="grid grid-cols-3 gap-4 mt-4 text-base">
  <div class="bg-gray-100 rounded-lg shadow p-4 text-center">
    <p class="text-em-3xl font-bold text-gray-600">35万文字</p>
    <p class="text-em-lg mt-2">総文字数</p>
    <p class="text-em-base text-gray-500 mt-1">4部16章60節</p>
  </div>

  <div class="rounded-lg shadow p-4 text-center"
       style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
    <p class="text-em-3xl font-bold text-white">774件</p>
    <p class="text-em-lg mt-2 text-white">GitHub Issue</p>
  </div>

  <div class="bg-gray-100 rounded-lg shadow p-4 text-center">
    <p class="text-em-3xl font-bold text-gray-600">1ヶ月</p>
    <p class="text-em-lg mt-2">執筆期間</p>
  </div>
</div>

<!--
================================================================================
F-27. 数値統計表示
================================================================================
用途: データを印象的に見せるパターン
デザインポイント:
- text-em-3xl で数値を大きく強調
- 中央のカードはグラデーション背景で目立たせる
- shadow で立体感
- 補足情報は text-em-base で控えめに
-->

---

<!-- _backgroundColor: #E8F5F0 -->

<div class="h-full flex flex-col justify-center items-center text-center">

# この20年でも、<br>ソフトウェアの仕事は大きく変わりました

</div>

<!--
================================================================================
F-28. 中央配置（シンプル）
================================================================================
用途: 章の切り替えやブリッジ
デザインポイント:
- テキストのみ中央配置
- 背景は淡い色
- 余白を十分に
-->

---

# Q&Aスライド

<div class="h-80 flex flex-col items-center justify-center">

<div class="text-6xl mb-8">❓</div>

## 質問はありますか？

<div class="mt-4 text-gray-600">
ディスカッションの時間です
</div>

</div>

<!--
================================================================================
F-29. Q&Aスライド
================================================================================
用途: 質疑応答への誘導
デザインポイント:
- シンプルに中央配置
- アイコンで視覚的に示す
- 歓迎の雰囲気を出す
-->

---

# フロー図（横）

<div class="flex items-center justify-center gap-4 mt-12">

<div class="bg-gray-100 rounded-lg p-4 text-center w-28">

**実装**

AIで解決

</div>

<div class="text-2xl text-gray-400">→</div>

<div class="bg-gray-200 rounded-lg p-4 text-center w-28">

**要件定義**

AIで改善

</div>

<div class="text-2xl text-gray-400">→</div>

<div class="bg-gray-300 rounded-lg p-4 text-center w-28">

**企画・仮説**

AIで支援

</div>

<div class="text-2xl text-gray-400">→</div>

<div class="bg-[#1B4565] text-white rounded-lg p-4 text-center w-28">

**顧客の声**

最後の砦

</div>

</div>

<div class="text-center mt-6 text-gray-600">

**AIによる自動化でボトルネックは「暗黙知」へ移動する**

</div>

<!--
================================================================================
G-30. フロー図（横）
================================================================================
用途: プロセスやワークフロー
デザインポイント:
- 左から右への流れ
- 矢印で接続
- 最終ステップを強調
-->

---

# 問いかけスライド

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center px-12">

## 今日の問いかけ

<div class="bg-white/20 backdrop-blur rounded-lg p-8 mt-8">

# 「AIによって仕事は奪われるのか」

</div>

<div class="mt-8">

恐怖論でも楽観論でもない、**構造的な見取り図**を提示します。

</div>

</div>

<!--
================================================================================
G-31. 問いかけスライド
================================================================================
用途: 主題の提示や問いかけ
デザインポイント:
- 問いを大きく中央に
- グラデーション背景
- ガラス風パネルで強調
-->

---

# まとめスライド（番号付き）

<!--
_backgroundImage: "linear-gradient(135deg, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="space-y-4 mt-4">

<div class="bg-white/20 backdrop-blur rounded-lg p-5">

### ❶ AIは仕事を"消す"のではなく、仕事の中身と価値配分を変える

「実装中心」から「問題設定・価値創造中心」へ

</div>

<div class="bg-white/20 backdrop-blur rounded-lg p-5">

### ❷ できる化→自働化→自創化で生産性を段階的に高める

AIを「協働するチームメンバー」として扱う

</div>

<div class="bg-white/20 backdrop-blur rounded-lg p-5">

### ❸ 相対優位、ジョブクラフティング、3つのCで選ばれる存在に

今すぐ始めることが最大の競争優位

</div>

</div>

<!--
================================================================================
G-32. まとめスライド（番号付き）
================================================================================
用途: プレゼンの最終まとめ
デザインポイント:
- グラデーション背景で特別感
- 番号で順序を示す
- 各ポイントをパネルで分離
-->

---

# 対比図（矢印付き）

<div class="grid grid-cols-3 gap-4 mt-8 items-center">

<div class="bg-gray-50 rounded-lg p-6 text-center">

### これまで

- コードを書く能力が価値
- 技術的参入障壁
- 「どう作るか」が重要

</div>

<div class="text-4xl text-[#3E9BA4] text-center">

**→**

</div>

<div class="bg-[#E8F5F5] rounded-lg p-6 text-center">

### これから

- 問題を発見する能力が価値
- AIによって参入障壁が下がる
- 「何を作るか」「なぜ作るか」が重要

</div>

</div>

<!--
================================================================================
G-33. 対比図（矢印付き）
================================================================================
用途: 変化の方向性を示す
デザインポイント:
- 左が現状、右が将来
- 中央に大きな矢印
- 右側をアクセントカラーで強調
-->

---

# 企業事例

<div class="grid grid-cols-2 gap-6 mt-8">

<div class="bg-white rounded-xl shadow-lg overflow-hidden">
<div class="bg-[#1B4565] text-white p-4">
<h3 class="text-em-xl font-bold">Cursor（Anysphere）</h3>
</div>
<div class="p-5">
<p class="text-em-3xl font-bold text-[#1B4565]">4人</p>
<p class="text-em-base text-gray-600">従業員数</p>

<p class="text-em-3xl font-bold text-[#3E9BA4] mt-4">140億円</p>
<p class="text-em-base text-gray-600">年間売上</p>

<p class="text-em-base text-gray-500 mt-4">AIコードエディタを開発</p>
</div>
</div>

<div class="bg-white rounded-xl shadow-lg overflow-hidden">
<div class="bg-[#3E9BA4] text-white p-4">
<h3 class="text-em-xl font-bold">Cognition AI（Devin）</h3>
</div>
<div class="p-5">
<p class="text-em-3xl font-bold text-[#1B4565]">約10人</p>
<p class="text-em-base text-gray-600">従業員数</p>

<p class="text-em-3xl font-bold text-[#3E9BA4] mt-4">2000億円</p>
<p class="text-em-base text-gray-600">企業価値</p>

<p class="text-em-base text-gray-500 mt-4">自律型AIエンジニアを開発</p>
</div>
</div>

</div>

<!--
================================================================================
G-34. 企業事例
================================================================================
用途: ケーススタディの紹介
デザインポイント:
- rounded-xl + shadow-lg で立体感
- text-em-3xl で数値を大きく強調
- text-em-base で補足情報
-->

---

# チェックリスト

<div class="mt-8 space-y-4">

<div class="flex items-center gap-4 bg-gray-50 rounded-lg p-4">
<div class="w-8 h-8 bg-[#3E9BA4] rounded flex items-center justify-center text-white">✓</div>
<div>最低限のプロンプト技法を学ぶ</div>
</div>

<div class="flex items-center gap-4 bg-gray-50 rounded-lg p-4">
<div class="w-8 h-8 bg-[#3E9BA4] rounded flex items-center justify-center text-white">✓</div>
<div>専門家ボットを作成・活用</div>
</div>

<div class="flex items-center gap-4 bg-gray-50 rounded-lg p-4">
<div class="w-8 h-8 bg-[#3E9BA4] rounded flex items-center justify-center text-white">✓</div>
<div>繰り返し行う業務を、担当者以外でも「できる」ように</div>
</div>

<div class="flex items-center gap-4 bg-gray-50 rounded-lg p-4">
<div class="w-8 h-8 border-2 border-gray-300 rounded"></div>
<div class="text-gray-500">社内ナレッジ、社内ツールとの接続</div>
</div>

<div class="flex items-center gap-4 bg-gray-50 rounded-lg p-4">
<div class="w-8 h-8 border-2 border-gray-300 rounded"></div>
<div class="text-gray-500">トリガー → 実行 → 報告の自動化</div>
</div>

</div>

<!--
================================================================================
G-35. チェックリスト
================================================================================
用途: To-Doや進捗の表示
デザインポイント:
- チェック済みは緑のチェックマーク
- 未完了はグレーアウト
- 進捗が一目でわかる
-->

---

# 警告・注意パネル

<div class="mt-8 space-y-6">

<div class="bg-red-50 border-l-4 border-red-400 rounded-r-lg p-5">

### ⚠️ 注意

これまでの「正解」が通用しなくなる可能性があります。
意識的に古いやり方を手放す必要があります。

</div>

<div class="bg-yellow-50 border-l-4 border-yellow-400 rounded-r-lg p-5">

### 💡 ポイント

専門知識がなくても、AIを活用して**自分でできる**ようになる

</div>

<div class="bg-green-50 border-l-4 border-green-400 rounded-r-lg p-5">

### ✅ 推奨

今すぐ始めることが最大の競争優位です。
1%の継続実践者になりましょう。

</div>

</div>

<!--
================================================================================
G-36. 警告・注意パネル
================================================================================
用途: 注意事項や補足情報
デザインポイント:
- 色で重要度を区別（赤:警告、黄:注意、緑:推奨）
- 左ボーダーとアイコンで視認性向上
- 簡潔なメッセージ
-->

---

# テーブル

<div class="mt-8">

| パターン | 使用頻度 | 用途 |
|----------|----------|------|
| **1カラム** | 高 | タイトル、セクション区切り、引用 |
| **2カラム** | 最高 | 比較、Before/After、左右分割 |
| **3カラム** | 中 | 3つの概念・ステップの並列表示 |
| **4カラム** | 低 | 4項目の比較（罠4つなど） |

</div>

<!--
================================================================================
G-37. テーブル
================================================================================
用途: データの比較や一覧
デザインポイント:
- Markdownのテーブル記法を使用
- ヘッダー行は太字
- 適度な列幅
-->

---

# コード表示

<div class="mt-8">

```css
/* プライマリグラデーション */
background: linear-gradient(to right, #1B4565, #3E9BA4);

/* 標準パネル */
.panel {
  background: #F5F7FA;
  border-radius: 8px;
  padding: 20px;
}

/* アクセントパネル */
.panel-accent {
  background: #F5F7FA;
  border-left: 4px solid #3E9BA4;
  border-radius: 0 8px 8px 0;
  padding: 20px;
}
```

</div>

<!--
================================================================================
G-38. コード表示
================================================================================
用途: ソースコードの表示
デザインポイント:
- Markdown のコードブロックを使用
- 言語を指定してシンタックスハイライト
- 適切なフォントサイズ
-->

---

# 2カラム + フッター

<div class="grid grid-cols-2 gap-6">

<div class="bg-gray-50 rounded-lg p-5">

### AIは等しく配られている

OpenAI、Google、Anthropic...誰でも同じ条件でアクセス可能

</div>

<div class="bg-gray-50 rounded-lg p-5">

### 技術そのものは競争優位にならない

使いこなす能力が差を生む

</div>

</div>

<div class="mt-6 bg-[#E8F5F5] rounded-lg p-5 text-center">

**変化の初期段階で飛び込んだ者が圧倒的優位を得る**

</div>

<!--
================================================================================
G-39. 2カラム + フッター
================================================================================
用途: 対比とまとめの組み合わせ
デザインポイント:
- 上部に2カラムで対比
- 下部に結論やまとめ
- 結論はアクセントカラーで強調
-->

---

<!-- _backgroundColor: #1B4565 -->
<!-- _color: white -->

<div class="h-full flex flex-col justify-center items-center text-center">

# サンプル集は以上です

<div class="mt-8 text-xl opacity-80">

このファイルをコピーして、必要なパターンを選んでお使いください

</div>

<div class="mt-12 text-sm opacity-60">

slides/example.md

</div>

</div>
