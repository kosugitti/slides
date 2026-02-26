# exametrika_tutorial プロジェクト

## 方針

このプロジェクトは、BMS2025spring（第27回行動計量学会春の合宿セミナー資料）を元に、
**exametrikaパッケージの包括的な日本語チュートリアル**を作成するものである。

### BMS2025springからの変更点

- Rの基本操作（データ型、ベクトル、行列、パイプ演算子等）の解説を **削除**
- BMS春セミナー固有の記述（自己紹介、プロジェクト設定の案内等）を **削除**
- exametrikaの **全ての関数** の使用例を網羅する
- **ggExametrika** パッケージによるggplot2ベースのプロット例を全て併記する
- BNM、LDLRA、LDB、BINET等、元スライドにないモデルも追加する

### 対象読者

- Rの基本操作は既知とする
- テスト理論の基礎知識がある、またはこのチュートリアルで学ぶ人

### 技術スタック

- Quarto Book形式（HTML出力）
- R + exametrika（v1.9.0以降）+ ggExametrika
- 日本語

---

## 章構成（予定）

現在のBMS2025springの章構成:

```
index.qmd              — はじめに
chap0_introduction.qmd — Rとexametrikaの導入（R基本操作含む）
chap2_ItemTest.qmd     — 項目分析
chap4_IRT.qmd          — 項目反応理論
chap6_LRA.qmd          — 潜在クラス/ランク分析
chap8_Biclustering.qmd — バイクラスタリング
```

新しい章構成（案）:

```
index.qmd              — はじめに（exametrikaの概要、インストール方法）
chap01_data.qmd        — データ準備（dataFormat, longdataFormat）
chap02_descriptive.qmd — 記述統計・項目分析（TestStatistics, ItemStatistics, CTT等）
chap03_IRT.qmd         — 項目反応理論（IRT, GRM, 2PLM, 3PLM等）
chap04_LCA_LRA.qmd     — 潜在クラス/ランク分析（LCA, LRA）
chap05_Biclustering.qmd — バイクラスタリング（Biclustering, IRM, GridSearch）
chap06_BNM.qmd         — ベイズネットワークモデル（BNM, BNM_GA, BNM_PBIL）
chap07_LDLRA.qmd       — 局所依存モデル（LDLRA, LDB, BINET）
```

---

## exametrika エクスポート関数一覧（70関数、うち非推奨4）

### データ準備
- dataFormat, longdataFormat

### 記述統計
- TestStatistics, ItemStatistics, ItemReport, ScoreReport, StudentAnalysis

### 古典的テスト理論
- CTT, AlphaCoefficient, OmegaCoefficient, Dimensionality

### 項目分析
- ItemFit, ItemTotalCorr, ItemEntropy, ItemThreshold, ItemLift, ItemOdds, ITBiserial, InterItemAnalysis

### テストレベル分析
- TestFit, TestFitSaturated, TestResponseFunc, TestInformationFunc

### 相関・連関係数
- BiserialCorrelation, TetrachoricCorrelationMatrix, PolychoricCorrelationMatrix, PhiCoefficient, MutualInformation, tetrachoric, polychoric, polyserial

### 項目反応理論
- IRT, GRM, RaschModel, TwoPLM, ThreePLM, LogisticModel, IIF2PLM, IIF3PLM, ItemInformationFunc, grm_prob, grm_iif

### 潜在クラス・ランク分析
- LCA, LRA

### バイクラスタリング
- Biclustering, Biclustering_IRM, GridSearch

### ベイズネットワークモデル
- BNM, BNM_GA, BNM_PBIL

### 局所依存モデル
- LDLRA, LDLRA_PBIL, LDB, BINET

### スコアリング
- crr, nrs, passage, percentile, sscore, stanine, CSR, JSR, CCRR, JCRR, JointSampleSize

### モデル適合度
- calcFitIndices

### 非推奨（v2.0.0で削除予定）
- IRM → Biclustering_IRM
- StrLearningGA_BNM → BNM_GA
- StrLearningPBIL_BNM → BNM_PBIL
- StrLearningPBIL_LDLRA → LDLRA_PBIL

---

## ggExametrika エクスポート関数一覧（32関数）

### IRT系
- plotICC_gg, plotICC_overlay_gg, plotIIC_gg, plotIIC_overlay_gg, plotICRF_gg

### TRF/TIC系
- plotTRF_gg, plotTIC_gg

### IRP/Field系
- plotIRP_gg, plotFRP_gg, plotTRP_gg, plotFieldPIRP_gg, plotScoreField_gg

### LCD/LRD系
- plotLCD_gg, plotLRD_gg

### CMP/RMP系
- plotCMP_gg, plotRMP_gg

### CRV/RRV系（多値対応）
- plotCRV_gg, plotRRV_gg

### Array系（多値対応）
- plotArray_gg

### ICBR/FCBR/ICRP/FCRP系
- plotICBR_gg, plotICRP_gg, plotFCBR_gg, plotFCRP_gg

### スコア分布・ランク系
- plotScoreFreq_gg, plotScoreRank_gg, plotLDPSR_gg

### グラフ（ネットワーク）系
- plotGraph_gg（BNM/LDLRA対応）

### ユーティリティ
- combinePlots_gg

---

## TODO

- [x] _quarto.yml を新しい章構成に書き換える
- [x] index.qmd を書き換え（概要、インストール、パッケージ紹介）
- [x] chap01_data.qmd 作成（データ準備）
- [x] chap02_descriptive.qmd 作成（記述統計・項目分析・CTT）
- [x] chap03_IRT.qmd 作成（IRT全モデル + GRM）
- [x] chap04_LCA_LRA.qmd 作成（LCA, LRA）
- [x] chap05_Biclustering.qmd 作成（Biclustering, IRM, GridSearch）
- [x] chap06_BNM.qmd 作成（BNM, BNM_GA, BNM_PBIL）
- [x] chap07_LDLRA.qmd 作成（LDLRA, LDB, BINET）
- [x] 各章にggExametrikaのプロット例を追加
- [x] 旧ファイル（chap0〜chap8）の削除・整理
- [x] 不要な画像ファイルの整理
- [x] レンダリング確認（全8章エラーなし完了）
- [ ] 内容のレビュー・微調整

---

## 作業ログ

### 2026-02-26
- BMS2025springをコピーしてexametrika_tutorialフォルダを作成
- CLAUDE.md作成（方針・TODO・関数一覧の整理）
- 全8章（index + chap01〜07）を作成
  - guide-ja.Rmd, network-models.Rmd, 旧chap*.qmdの内容を再編・統合
  - 全章にggExametrikaのプロット例を併記
  - BNM, LDLRA, LDB, BINETの新章を追加
- 旧ファイル削除（chap0/2/4/6/8, .tex, tmp-pdfcrop, R基本操作用画像16枚等）
- BMS2025spring.Rproj → exametrika_tutorial.Rproj にリネーム
- _quarto.yml: HTML出力のみ、BMS固有のsubtitle削除
- レンダリングエラーを反復修正:
  - longdataFormat: 重複IDバグのためeval:falseに設定
  - ItemReport/ScoreReport: 二値データ非対応→多値セクションに移動
  - TwoPLM(): エラー→IRT(dat, model=2)に変更
  - ggExametrika v0.0.34, exametrika v1.9.0をローカルからインストール
  - LogisticModel等の関数マスキング→exametrika::プレフィクス付与
  - plotIRP_gg等リスト返却関数→[[1]]で対応
  - plotFCRP_gg: 単一ggplot返却→[[1]]削除
  - chap06: J20S400(名義)→J15S500(二値)に変更
- 全8章（index + chap01〜07）のHTMLレンダリング正常完了
