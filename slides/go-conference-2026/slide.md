---
marp: true
theme: default
paginate: true
---

<script src="../../themes/js/tailwind.config.js"></script>
<script src="../../themes/js/tailwindcss-3.0.16.js"></script>

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
_paginate: false
-->

<div class="h-full flex flex-col justify-center">

# Goに新機能を提案し<br>実装されるまでのフロー徹底解説

**〜将来、あなたのアイデアがGoに入るかもしれない〜**

<div class="mt-16 text-right text-em-lg opacity-80">
Go Conference 2026 / Your Name
</div>

</div>

---

## 自己紹介

<div class="grid grid-cols-3 gap-6 mt-6 h-4/5">

<!-- 左: テキスト（2カラム分） -->
<div class="col-span-2 flex flex-col justify-center">

<div class="space-y-4">

<div class="flex items-center gap-3">
<span class="bg-[#1B4565] text-white rounded-lg px-3 py-1 text-em-sm font-bold">名前</span>
<span class="text-em-xl font-bold">pooh</span>
</div>

<div class="flex items-center gap-3">
<span class="bg-[#3E9BA4] text-white rounded-lg px-3 py-1 text-em-sm font-bold">所属</span>
<span class="text-em-lg">メルコイン 取締役CTO</span>
</div>

<div class="flex items-center gap-3">
<span class="bg-[#1B4565] text-white rounded-lg px-3 py-1 text-em-sm font-bold">SNS</span>
<span class="text-em-lg">@t_yamatoya</span>
</div>

</div>

</div>

<!-- 右: 画像（1カラム分） -->
<div class="flex items-center justify-center">
<img src="images/profile.png" class="rounded-full w-48 h-48 shadow-xl border-4 border-[#3E9BA4]" alt="プロフィール画像" />
</div>

</div>

---

## 今日お話しすること

<div class="mt-6 space-y-5">

<div class="bg-gray-50 rounded-xl shadow p-5 border-l-4 border-[#1B4565]">
<h3 class="text-em-xl font-bold">1. Goプロポーザルプロセスの全体像</h3>
<p class="text-em-base text-gray-600 mt-1">Issue作成からAccept、実装までの流れ</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-5 border-l-4 border-[#3E9BA4]">
<h3 class="text-em-xl font-bold">2. 直近の実例3件を徹底解剖</h3>
<p class="text-em-base text-gray-600 mt-1">実際の議論から学ぶ「採用」と「却下」の判断基準</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-5 border-l-4 border-[#3E9BA4]">
<h3 class="text-em-xl font-bold">3. 説得力ある提案の作り方</h3>
<p class="text-em-base text-gray-600 mt-1">あなたの提案がGoに取り込まれるためのヒント</p>
</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center px-12">

## 問いかけ

<div class="bg-white/20 backdrop-blur rounded-xl p-8 mt-8">

# あなたのアイデアが<br>Goの標準ライブラリに入る日

</div>

<div class="mt-8 text-em-lg">

そのために知っておくべきことは何か？

</div>

</div>

---

## プロポーザルプロセスの全体像

<div class="mt-4">

<!-- タイムラインレイアウト -->
<div class="relative">

<!-- 横線 -->
<div class="absolute top-6 left-8 right-8 h-1 bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] rounded-full"></div>

<!-- タイムラインアイテム -->
<div class="flex justify-between relative">

<div class="flex flex-col items-center w-1/5">
<div class="bg-[#1B4565] text-white rounded-full w-12 h-12 flex items-center justify-center font-bold text-em-lg shadow-lg z-10">1</div>
<p class="text-em-base font-bold mt-2 text-center">Issue作成</p>
<p class="text-em-sm text-gray-600 text-center mt-1">`Proposal:` タイトル</p>
</div>

<div class="flex flex-col items-center w-1/5">
<div class="bg-[#3E9BA4] text-white rounded-full w-12 h-12 flex items-center justify-center font-bold text-em-lg shadow-lg z-10">2</div>
<p class="text-em-base font-bold mt-2 text-center">Triage</p>
<p class="text-em-sm text-gray-600 text-center mt-1">ラベル付与</p>
</div>

<div class="flex flex-col items-center w-1/5">
<div class="bg-[#3E9BA4] text-white rounded-full w-12 h-12 flex items-center justify-center font-bold text-em-lg shadow-lg z-10">3</div>
<p class="text-em-base font-bold mt-2 text-center">議論</p>
<p class="text-em-sm text-gray-600 text-center mt-1">フィードバック収集</p>
</div>

<div class="flex flex-col items-center w-1/5">
<div class="bg-[#1B4565] text-white rounded-full w-12 h-12 flex items-center justify-center font-bold text-em-lg shadow-lg z-10">4</div>
<p class="text-em-base font-bold mt-2 text-center">Review</p>
<p class="text-em-sm text-gray-600 text-center mt-1">週次Meeting</p>
</div>

<div class="flex flex-col items-center w-1/5">
<div class="bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-full w-12 h-12 flex items-center justify-center font-bold text-em-lg shadow-lg z-10">5</div>
<p class="text-em-base font-bold mt-2 text-center">決定</p>
<p class="text-em-sm text-gray-600 text-center mt-1">Accept/Decline</p>
</div>

</div>

</div>

<!-- 補足説明 -->
<div class="mt-8 bg-gray-50 rounded-xl p-4 shadow">
<p class="text-em-base text-center">💡 週次のProposal Review Meetingで進捗をチェック。最終的に<strong class="text-[#3E9BA4]">Accept</strong>または<strong class="text-gray-500">Decline</strong>が決定される</p>
</div>

</div>

---

## Proposal Status の変遷

<div class="mt-6">

<!-- フロー図（横）レイアウト -->
<div class="flex items-center justify-center gap-3 mb-8">
  <div class="bg-blue-500 text-white rounded-xl px-5 py-4 text-center shadow-lg min-w-[100px]">
    <p class="text-em-lg font-bold">Incoming</p>
    <p class="text-em-sm opacity-80">新規</p>
  </div>
  <div class="text-blue-400 text-em-2xl font-bold">→</div>
  <div class="bg-yellow-500 text-white rounded-xl px-5 py-4 text-center shadow-lg min-w-[100px]">
    <p class="text-em-lg font-bold">Active</p>
    <p class="text-em-sm opacity-80">議論中</p>
  </div>
  <div class="text-yellow-400 text-em-2xl font-bold">→</div>
  <div class="bg-green-500 text-white rounded-xl px-5 py-4 text-center shadow-lg min-w-[100px]">
    <p class="text-em-lg font-bold">Likely Accept</p>
    <p class="text-em-sm opacity-80">採用見込</p>
  </div>
  <div class="text-green-400 text-em-2xl font-bold">→</div>
  <div class="bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-xl px-5 py-4 text-center shadow-lg min-w-[100px]">
    <p class="text-em-lg font-bold">Accepted</p>
    <p class="text-em-sm opacity-80">採用決定</p>
  </div>
</div>

<div class="grid grid-cols-4 gap-3">

<div class="bg-blue-50 rounded-xl shadow p-3 border-t-4 border-blue-500">
<p class="text-em-base font-bold">Incoming</p>
<p class="text-em-sm text-gray-600 mt-1">Triageを待つ状態</p>
</div>

<div class="bg-yellow-50 rounded-xl shadow p-3 border-t-4 border-yellow-500">
<p class="text-em-base font-bold">Active</p>
<p class="text-em-sm text-gray-600 mt-1">コミュニティ議論中</p>
</div>

<div class="bg-green-50 rounded-xl shadow p-3 border-t-4 border-green-500">
<p class="text-em-base font-bold">Likely Accept</p>
<p class="text-em-sm text-gray-600 mt-1">1週間の異議申立期間</p>
</div>

<div class="bg-[#E8F5F5] rounded-xl shadow p-3 border-t-4 border-[#3E9BA4]">
<p class="text-em-base font-bold">Accepted</p>
<p class="text-em-sm text-gray-600 mt-1">CLがマージ可能に</p>
</div>

</div>

<div class="mt-4 bg-gray-100 rounded-xl p-3 text-center">
<p class="text-em-base">💡 <strong>Likely Accept</strong> は最終決定ではない。この期間に新たな懸念が出れば再検討される</p>
</div>

</div>

---

## Design Document（設計文書）

<div class="mt-2">

<div class="bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-xl p-4 mb-3">
<h3 class="text-em-lg font-bold mb-2">いつDesign Docが必要か？</h3>
<div class="grid grid-cols-2 gap-2 text-em-sm">
<div>• 言語仕様の変更</div>
<div>• 標準ライブラリへの大きな追加</div>
<div>• 複雑なAPI設計を伴う提案</div>
<div>• 影響範囲が広い変更</div>
</div>
</div>

<div class="grid grid-cols-2 gap-3">

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold mb-1">📝 Design Docの構成</h3>
<ul class="text-em-sm text-gray-700 space-y-0.5">
<li>背景と動機</li>
<li>提案の詳細な仕様</li>
<li>代替案の検討</li>
<li>互換性への影響</li>
<li>実装計画</li>
</ul>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold mb-1">📍 保管場所</h3>
<p class="text-em-sm text-gray-700">golang/proposal リポジトリの `/design` ディレクトリ</p>
<p class="text-em-sm text-gray-500 mt-1">例: Generics, Context, Modules など</p>
</div>

</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center">

# なぜProposalプロセスがあるのか

**Goの設計哲学を理解する**

</div>

---

## Goが大切にしていること

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="bg-gradient-to-br from-[#1B4565] to-[#3E9BA4] text-white rounded-xl shadow-lg p-4">
<h3 class="text-em-xl font-bold mb-2">Go 1 互換性の約束</h3>
<p class="text-em-base">"Go 1 で書かれたプログラムは、Go 1 の仕様が続く限り、コンパイル・実行され続ける"</p>
<p class="text-em-sm mt-2 opacity-80">— Go 1 Compatibility Promise</p>
</div>

<div class="space-y-3">

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">🎯 言語の安定性を最優先</p>
<p class="text-em-sm text-gray-600">新機能追加より既存コードの保護</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">⚖️ 慎重な変更プロセス</p>
<p class="text-em-sm text-gray-600">一度入ったAPIは簡単に削除できない</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">📏 シンプルさの維持</p>
<p class="text-em-sm text-gray-600">複雑さを増やす提案には慎重</p>
</div>

</div>

</div>

---

## 「いつでもYes」より「慎重にNo」

<div class="mt-3 bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-xl p-4">
<h3 class="text-em-base font-bold mb-1">Goチームの姿勢</h3>
<p class="text-em-sm">「一度採用すると、Deprecatedにしても実質削除できない。だからこそ、本当に必要かを徹底的に議論する」</p>
</div>

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="bg-red-50 rounded-xl shadow p-3 border-l-4 border-red-400">
<h3 class="text-em-base font-bold mb-1">❌ 避けたいこと</h3>
<ul class="text-em-sm text-gray-700 space-y-1">
<li>似たようなAPIが複数存在</li>
<li>初心者が迷う選択肢の増加</li>
<li>メンテナンスコストの増大</li>
<li>Go 1 Promiseの空洞化</li>
</ul>
</div>

<div class="bg-green-50 rounded-xl shadow p-3 border-l-4 border-green-400">
<h3 class="text-em-base font-bold mb-1">✅ 目指すこと</h3>
<ul class="text-em-sm text-gray-700 space-y-1">
<li>明確で一貫したAPI</li>
<li>学習コストの最小化</li>
<li>長期的なメンテナンス性</li>
<li>後方互換性の堅持</li>
</ul>
</div>

</div>

---

## コミュニティが重視する3つの視点

<div class="grid grid-cols-3 gap-6 mt-8">

<div class="bg-[#E8F5F5] rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">後方互換性</h3>
<p class="text-em-lg font-bold text-[#3E9BA4]">Go 1 Promise</p>
<p class="text-em-base text-gray-700 mt-2">Go 1で書かれたコードは将来も動き続ける。この約束を破らないか？</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">シンプルさ</h3>
<p class="text-em-lg font-bold text-[#1B4565]">Simplicity</p>
<p class="text-em-base text-gray-700 mt-2">言語やライブラリの複雑さを不必要に増やさないか？</p>
</div>

<div class="bg-[#E8F5F5] rounded-xl shadow p-6">
<h3 class="text-em-2xl font-bold">実用性</h3>
<p class="text-em-lg font-bold text-[#3E9BA4]">Real Use Cases</p>
<p class="text-em-base text-gray-700 mt-2">実際に困っている人がいるか？具体的なユースケースはあるか？</p>
</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center">

# 事例 1

**runtime/trace: flight recording**

<div class="mt-8 text-em-lg opacity-80">
Issue #63185 | 2023/09/24 提起 → 2025/01/28 Accept
</div>

<div class="mt-4 text-em-base opacity-60">
github.com/golang/go/issues/63185
</div>

</div>

---

## 事例1: runtime/trace flight recording

<div class="grid grid-cols-4 gap-2 mt-3">
  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">#63185</p>
    <p class="text-em-sm">Issue番号</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#3E9BA4]">16ヶ月</p>
    <p class="text-em-sm">議論期間</p>
  </div>

  <div class="rounded-xl shadow p-2 text-center"
       style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
    <p class="text-em-base font-bold text-white">Felix Geisendörfer</p>
    <p class="text-em-sm text-white">提案者</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">Go 1.25</p>
    <p class="text-em-sm">導入版</p>
  </div>
</div>

<div class="mt-3 bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">🔗 関連リンク</p>
<ul class="text-em-sm text-gray-600 mt-1 space-y-0.5">
<li>Design Doc: golang/proposal/design/63185-execution-tracer-flightrecording.md</li>
<li>実装CL: go.dev/cl/での複数のCL</li>
</ul>
</div>

---

## 事例1: どんな課題を解決するのか

<div class="mt-6">

<div class="bg-gradient-to-r from-[#1B4565] to-[#3E9BA4] text-white rounded-xl p-6">

### 課題

本番環境で問題が発生したとき、**後から**トレースを取得したい。
しかし、従来の `runtime/trace` は**事前に**開始する必要があった。

</div>

</div>

<div class="grid grid-cols-2 gap-6 mt-6">

<div class="bg-gray-50 rounded-xl shadow p-5 border-l-4 border-gray-400">
<h3 class="text-em-lg font-bold mb-2">Before</h3>
<ul class="text-em-base text-gray-700 space-y-2">
<li>問題発生を予測してトレース開始</li>
<li>常時トレースはオーバーヘッド大</li>
<li>再現困難な問題は調査不能</li>
</ul>
</div>

<div class="bg-gray-50 rounded-xl shadow p-5 border-l-4 border-[#3E9BA4]">
<h3 class="text-em-lg font-bold mb-2">After (Flight Recording)</h3>
<ul class="text-em-base text-gray-700 space-y-2">
<li>常にバックグラウンドで記録</li>
<li>問題発生時に直近のデータを取得</li>
<li>低オーバーヘッドで本番運用可能</li>
</ul>
</div>

</div>

---

## 事例1: 議論のポイント

<div class="grid grid-cols-2 gap-4 mt-4">

<div class="bg-gray-50 rounded-xl shadow-lg p-4 border-l-4 border-[#3E9BA4]">
<h3 class="text-em-lg font-bold mb-2 text-gray-800">賛成意見</h3>
<ul class="text-em-sm space-y-1 text-gray-700">
<li>本番デバッグの強力なツールになる</li>
<li>他言語（Java Flight Recorder）で実績あり</li>
<li>既存APIとの整合性が取れている</li>
</ul>
</div>

<div class="bg-gray-100 rounded-xl shadow-lg p-4 border-l-4 border-gray-500">
<h3 class="text-em-lg font-bold mb-2 text-gray-800">懸念点</h3>
<ul class="text-em-sm space-y-1 text-gray-700">
<li>メモリ使用量の増加</li>
<li>実装の複雑さ</li>
<li>セキュリティ考慮（機密データの記録）</li>
</ul>
</div>

</div>

---

## 事例1: 追加されるAPI

<div class="mt-2">

<div class="bg-gray-900 text-gray-100 rounded-xl p-3 font-mono text-xs">

```go
fr := trace.NewFlightRecorder()
fr.Start()
// ... アプリケーション実行中 ...
snapshot, err := fr.WriteTo(w) // 問題発生時に取得
```

</div>

<div class="grid grid-cols-2 gap-3 mt-3">

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">🎯 主要な新API</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>`trace.NewFlightRecorder()`</li>
<li>`FlightRecorder.Start() / Stop()`</li>
<li>`FlightRecorder.WriteTo(w)`</li>
</ul>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">📊 特徴</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>リングバッファで循環記録</li>
<li>オーバーヘッド 1-2%</li>
<li>既存の go tool trace で解析可能</li>
</ul>
</div>

</div>

</div>

---

## 事例1: 採用の決め手

<div class="mt-6">

<div class="bg-white border-l-4 border-[#1B4565] rounded-r-xl shadow p-5 italic">

"This proposal has been open for a year and a half with mass community support. The implementation is ready and has been tested."

<div class="mt-3 text-right text-gray-600 not-italic text-em-base">
— Proposal Review Comment
</div>

</div>

</div>

<div class="grid grid-cols-3 gap-4 mt-4">

<div class="bg-[#E8F5F5] rounded-xl shadow p-4 text-center">
<p class="text-em-2xl font-bold text-[#1B4565]">16ヶ月</p>
<p class="text-em-base mt-1">長期間の議論で懸念点をクリア</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-4 text-center">
<p class="text-em-2xl font-bold text-[#3E9BA4]">実装完了</p>
<p class="text-em-base mt-1">テスト済みのCLが準備済み</p>
</div>

<div class="bg-[#E8F5F5] rounded-xl shadow p-4 text-center">
<p class="text-em-2xl font-bold text-[#1B4565]">Java実績</p>
<p class="text-em-base mt-1">Java Flight Recorderで実証済み</p>
</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center">

# 事例 2

**go/token: add File.End method**

<div class="mt-8 text-em-lg opacity-80">
Issue #69772 | 2024/10/11 提起 → 2024/11/13 Accept
</div>

<div class="mt-4 text-em-base opacity-60">
github.com/golang/go/issues/69772
</div>

</div>

---

## 事例2: go/token File.End method

<div class="grid grid-cols-4 gap-2 mt-3">
  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">#69772</p>
    <p class="text-em-sm">Issue番号</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#3E9BA4]">33日</p>
    <p class="text-em-sm">スピード採用</p>
  </div>

  <div class="rounded-xl shadow p-2 text-center"
       style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
    <p class="text-em-base font-bold text-white">Alan Donovan</p>
    <p class="text-em-sm text-white">提案者(Goチーム)</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">Go 1.24</p>
    <p class="text-em-sm">導入版</p>
  </div>
</div>

<div class="mt-3 bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">🔗 関連リンク</p>
<ul class="text-em-sm text-gray-600 mt-1 space-y-0.5">
<li>実装CL: go.dev/cl/620455（わずか5行の変更）</li>
<li>gopls内部での利用: analyzer/unusedwrite など多数</li>
</ul>
</div>

---

## 事例2: Before / After

<div class="mt-4">

<div class="grid grid-cols-2 gap-4">

<div class="bg-red-50 rounded-xl shadow p-4 border-l-4 border-red-400">
<h3 class="text-em-lg font-bold mb-2">❌ Before（煩雑）</h3>
<div class="bg-gray-900 text-gray-100 rounded-lg p-3 font-mono text-xs">

```go
// ファイル終端位置を取得するには...
end := token.Pos(f.Base() + f.Size())
```

</div>
<p class="text-em-base text-gray-600 mt-2">内部実装の知識が必要、間違えやすい</p>
</div>

<div class="bg-green-50 rounded-xl shadow p-4 border-l-4 border-green-400">
<h3 class="text-em-lg font-bold mb-2">✅ After（シンプル）</h3>
<div class="bg-gray-900 text-gray-100 rounded-lg p-3 font-mono text-xs">

```go
// 新しいメソッドで直感的に
end := f.End()
```

</div>
<p class="text-em-base text-gray-600 mt-2">意図が明確、間違いようがない</p>
</div>

</div>

<div class="mt-4 bg-[#E8F5F5] rounded-xl shadow p-4">
<h3 class="text-em-lg font-bold">💡 採用のポイント</h3>
<ul class="text-em-base text-gray-700 mt-2 space-y-1">
<li>**明確な課題**: goplsチーム内で繰り返し必要とされていた</li>
<li>**最小限の変更**: 1メソッド・5行追加のみ、破壊的変更なし</li>
<li>**信頼できる提案者**: Goチームメンバーによる提案</li>
</ul>
</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center">

# 事例 3

**net/http: add Transport.{Get,Set}Connection**

<div class="mt-8 text-em-lg opacity-80">
Issue #71021 | 2024/12/24 提起 → 2025/01/08 Accept
</div>

<div class="mt-4 text-em-base opacity-60">
github.com/golang/go/issues/71021
</div>

</div>

---

## 事例3: net/http Transport Connection API

<div class="grid grid-cols-4 gap-2 mt-3">
  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">#71021</p>
    <p class="text-em-sm">Issue番号</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#3E9BA4]">15日</p>
    <p class="text-em-sm">スピード採用</p>
  </div>

  <div class="rounded-xl shadow p-2 text-center"
       style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
    <p class="text-em-base font-bold text-white">Damien Neil</p>
    <p class="text-em-sm text-white">提案者(Goチーム)</p>
  </div>

  <div class="bg-gray-100 rounded-xl shadow p-2 text-center">
    <p class="text-em-xl font-bold text-[#1B4565]">Go 1.25</p>
    <p class="text-em-sm">導入予定</p>
  </div>
</div>

<div class="mt-3 bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-base font-bold">🔗 関連リンク</p>
<ul class="text-em-sm text-gray-600 mt-1 space-y-0.5">
<li>実装CL: go.dev/cl/（Transportに新メソッド追加）</li>
<li>長年の課題: #30310 #21051 #4677 など複数のIssueを解決</li>
</ul>
</div>

---

## 事例3: 追加されるAPI

<div class="mt-2">

<div class="bg-gray-900 text-gray-100 rounded-xl p-3 font-mono text-xs">

```go
type Transport struct {
    GetConnection func(ctx, req, h2) (*Conn, error)
    SetConnection func(*Conn)
}
type Conn struct { Conn net.Conn; LocalAddr net.Addr }
```

</div>

<div class="grid grid-cols-2 gap-3 mt-3">

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">🎯 解決する課題</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>コネクションプールの可視化</li>
<li>カスタムコネクション管理</li>
<li>接続のライフサイクル制御</li>
</ul>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">💡 設計のポイント</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>既存コードに影響なし（オプトイン）</li>
<li>HTTP/1.1 と HTTP/2 の両方に対応</li>
<li>段階的な機能拡張が可能</li>
</ul>
</div>

</div>

</div>

---

## 3つの事例を比較

<div class="mt-2">

| 事例 | 期間 | Issue | 提案者 | 特徴 |
|------|------|-------|--------|------|
| **runtime/trace** | 16ヶ月 | #63185 | 外部 | Design Doc必要、長期議論 |
| **go/token** | 33日 | #69772 | Goチーム | シンプル、5行追加 |
| **net/http** | 15日 | #71021 | Goチーム | 複数Issue解決、段階的設計 |

</div>

<div class="grid grid-cols-2 gap-3 mt-3">

<div class="bg-[#E8F5F5] rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">📊 共通する成功要因</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>**具体的なユースケース**が示されている</li>
<li>**後方互換性**が保たれている</li>
<li>**実装またはCL**が準備されている</li>
</ul>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<h3 class="text-em-base font-bold">💡 学べること</h3>
<ul class="text-em-sm text-gray-700 mt-1 space-y-0.5">
<li>規模に応じた議論期間の違い</li>
<li>Goチームメンバーでも同じプロセスを経る</li>
<li>小さな提案ほど採用されやすい</li>
</ul>
</div>

</div>

---

## 提案を採用されやすくするコツ

<div class="grid grid-cols-2 gap-3 mt-3">

<div class="space-y-2">

<div class="flex items-center gap-2 bg-gray-50 rounded-xl shadow p-2">
<span class="text-em-xl font-bold text-[#1B4565]">1</span>
<div>
<p class="text-em-base font-bold">課題を具体的に示す</p>
<p class="text-em-sm text-gray-600">「〇〇で困っている」を明確に</p>
</div>
</div>

<div class="flex items-center gap-2 bg-gray-50 rounded-xl shadow p-2">
<span class="text-em-xl font-bold text-[#3E9BA4]">2</span>
<div>
<p class="text-em-base font-bold">現状の回避策の問題点</p>
<p class="text-em-sm text-gray-600">なぜ不十分か説明する</p>
</div>
</div>

<div class="flex items-center gap-2 bg-gray-50 rounded-xl shadow p-2">
<span class="text-em-xl font-bold text-[#1B4565]">3</span>
<div>
<p class="text-em-base font-bold">後方互換性への配慮</p>
<p class="text-em-sm text-gray-600">既存コードへの影響を最小限に</p>
</div>
</div>

</div>

<div class="space-y-2">

<div class="flex items-center gap-2 bg-gray-50 rounded-xl shadow p-2">
<span class="text-em-xl font-bold text-[#3E9BA4]">4</span>
<div>
<p class="text-em-base font-bold">実装の複雑さを見積もる</p>
<p class="text-em-sm text-gray-600">メンテナンスコストも考慮</p>
</div>
</div>

<div class="flex items-center gap-2 bg-gray-50 rounded-xl shadow p-2">
<span class="text-em-xl font-bold text-[#1B4565]">5</span>
<div>
<p class="text-em-base font-bold">他言語での事例を調査</p>
<p class="text-em-sm text-gray-600">先行事例があると説得力が増す</p>
</div>
</div>

<div class="flex items-center gap-2 rounded-xl shadow p-2"
     style="background: linear-gradient(135deg, #1B4565 0%, #3E9BA4 100%);">
<span class="text-em-xl font-bold text-white">6</span>
<div>
<p class="text-em-base font-bold text-white">実装CLを準備する</p>
<p class="text-em-sm text-white/80">「動くコード」は最強の説得材料</p>
</div>
</div>

</div>

</div>

---

## 提案時の注意点

<div class="grid grid-cols-2 gap-3 mt-3">

<div class="bg-red-50 rounded-xl shadow p-3 border-l-4 border-red-400">
<h3 class="text-em-base font-bold mb-1">❌ 避けるべきこと</h3>
<ul class="text-em-sm text-gray-700 space-y-1">
<li>「他の言語にあるから」だけの理由</li>
<li>抽象的な「便利になる」という主張</li>
<li>大きすぎるスコープの提案</li>
<li>既存の議論を調べずに提案</li>
<li>破壊的変更を伴う提案（特別な理由なし）</li>
</ul>
</div>

<div class="bg-green-50 rounded-xl shadow p-3 border-l-4 border-green-400">
<h3 class="text-em-base font-bold mb-1">✅ 効果的なアプローチ</h3>
<ul class="text-em-sm text-gray-700 space-y-1">
<li>小さく始めて段階的に拡張</li>
<li>具体的なコード例を添える</li>
<li>既存のIssueやDiscussionを参照</li>
<li>フィードバックに積極的に対応</li>
<li>Go 1 互換性を最優先に考える</li>
</ul>
</div>

</div>

<div class="mt-3 bg-[#E8F5F5] rounded-xl shadow p-3 text-center">
<p class="text-em-base"><strong>💡 Goチームも含め、全員が同じプロセスを経る</strong></p>
<p class="text-em-sm text-gray-600 mt-1">特別扱いはない。良い提案は誰からでも採用される</p>
</div>

---

<!--
_backgroundImage: "linear-gradient(135deg, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center px-8">

# まとめ：3つのTakeaways

<div class="mt-8 space-y-4">

<div class="flex items-start gap-4">
  <div class="bg-white text-[#1B4565] rounded-full w-10 h-10 flex items-center justify-center font-bold text-em-xl flex-shrink-0">1</div>
  <div>
    <p class="text-em-xl font-bold">Goは「慎重にNo」の文化</p>
    <p class="text-em-lg opacity-80 mt-1">Go 1 互換性を守るため、採用には高いハードルがある</p>
  </div>
</div>

<div class="flex items-start gap-4">
  <div class="bg-white text-[#1B4565] rounded-full w-10 h-10 flex items-center justify-center font-bold text-em-xl flex-shrink-0">2</div>
  <div>
    <p class="text-em-xl font-bold">プロセスは誰にでもオープン</p>
    <p class="text-em-lg opacity-80 mt-1">Goチームも外部開発者も、同じProposalプロセスを経る</p>
  </div>
</div>

<div class="flex items-start gap-4">
  <div class="bg-white text-[#1B4565] rounded-full w-10 h-10 flex items-center justify-center font-bold text-em-xl flex-shrink-0">3</div>
  <div>
    <p class="text-em-xl font-bold">小さく始めて、実装で示す</p>
    <p class="text-em-lg opacity-80 mt-1">5行の変更でも価値ある貢献になる</p>
  </div>
</div>

</div>

</div>

---

## 参考リンク

<div class="grid grid-cols-2 gap-3 mt-4">

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">📚 Proposalプロセス</p>
<p class="text-em-base text-gray-600">github.com/golang/proposal</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">📖 Go 1 互換性の約束</p>
<p class="text-em-base text-gray-600">go.dev/doc/go1compat</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">🔍 runtime/trace #63185</p>
<p class="text-em-base text-gray-600">Flight Recording (16ヶ月議論)</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">🔍 go/token #69772</p>
<p class="text-em-base text-gray-600">File.End method (33日採用)</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">🔍 net/http #71021</p>
<p class="text-em-base text-gray-600">Transport Connection API (15日採用)</p>
</div>

<div class="bg-gray-50 rounded-xl shadow p-3">
<p class="text-em-lg font-bold">📋 Weekly Proposal Review</p>
<p class="text-em-base text-gray-600">github.com/golang/go/issues（Proposalラベル）</p>
</div>

</div>

---

<!--
_backgroundImage: "linear-gradient(to right, #1B4565, #3E9BA4)"
_color: #fff
-->

<div class="h-full flex flex-col justify-center items-center text-center">

# ご清聴ありがとうございました

<div class="mt-12 text-em-xl opacity-80">
質問があればどうぞ！
</div>

<div class="mt-8 text-em-base opacity-60">
@t_yamatoya
</div>

</div>
