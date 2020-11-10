# [@ PJIM.W.PP] Project management Outline plan

[@doc ghost 0.4, @docid PJIM.W.PP, @template ghost/PIJM.W.T.PP]

## 1. Introduction

本書は、プロジェクトマネジメント概要計画のテンプレートです。
Ghost processのデフォルトプラグインとして、Ghostが想定する一般的なモデルをベースにサンプルを記載してあります。
書き換えて使ってください。

## 2. Project lifecycle

### 2.1. Major Milestones

| @id | Name | Description |
| :-: | ---- | ----------- |
| MVP | Minimum Valueable Product | 内部イベント。最低限の機能を有するソフトウェアが実現している。基礎的なアーキテクチャが構築され、回帰テスト含むテスト実行環境が確立され、CI/CD（継続的な開発・継続的なリリース）を実施可能な状態になっている。
| ES0 | Engineering Sample #0 | 内部イベント。外部リリースする ES1 に先立ち、内部検証を行うためのリリースパッケージを作成する。外部リリースを想定して必要な成果物全てを揃えるが、実際にはリリースしない。この活動から、リリース活動に対する問題がないことを確認する。

| ES1 | Engineering Sample #1 | これ以降は顧客要求に基づくエンジニアリングサンプル。車載ECUをワークベンチ上で接続し、システムとしての起動・終了、電源消費量などの基本的な振舞いを検証することを目的とする。
| ES2 | Engineering Sample #2 | 個別システム機能の振舞いを確認するシステム検証を目的とする。
| ES3 | Engineering Sample #3 | 【 必要に応じて追加される 】
| CV  | Confirmation Vehicle | 車両としてくみ上げ、全ての機能・品質の検証を行う。開発部署単独での最終検証。一般的にはここでの検証を最終確認として開発活動終了。
| PP  | Pre production | 事前生産、量産試作。少量生産による車両の最終検証。一般的にここへ向けたソフトウェア開発活動は存在しない。機械学習による自動運転などにおいては、学習用データの調整が入るかもしれない。
| MP  | Mass Production |

### 2.2. Project Phases

本プロジェクトのプロジェクトマネジメントはMulti-phased agile processをベースとし、プロジェクトライフサイクル全体をいくつかのフェーズに区分する。各フェーズはそれぞれ異なる開発ゴールと製品品質レベル・マネジメントレベルを設定する。

本プロジェクトでは、以下の４つのフェーズを定義する。

| @id | Name | Description |
| :-: | ---- | ----------- |
| H1  | First Half | プロジェクト開始からMVPまで。設計書・テストコードの充足度やトレーサビリティの確立・一貫性の確保、不具合管理、変更管理などを、厳格には運用しない。実施レベルは、それぞれのプランで定める。
| HT  | Half Time  | MVPからES0まで。設計書・テストコードの充足度やトレーサビリティの確立・一貫性の確保、不具合管理、変更管理などを、巡航レベルまで引き上げる。
| H2  | Second Half | ES0からCVまで。管理レベル・品質レベルを維持しつつ、テスト充足度などの品質レベルを段階的に引き上げる。
| AT  | Additional Time | CV以降。契約終了に向け、設計根拠資料など契約に定められた提出書類のまとめなどを行う。万一不具合が発生した場合には対応を行う。このフェーズでの不具合改修・再リリースには、専用の（より厳格な）プロセスを求められる。

## 3. Project Activities

- 概要のみをここに記述し、詳細は ITS にて管理する

### 3.1. Work packages

- Engineering plan による開発方向性に基づく情報。

1. Feature list
   - Feature list レベルの粒度の機能リスト（とその実現レベル）

2. Development environment
   - 開発用実行環境、検証環境、テストケース作成など

3. Support process
   - ドキュメンテーション
   - 機能安全対応文書作成、など

### 3.2. Deependencies - ??????

- 上記 WP と各 ES との依存関係概要

## 4. Resources

### 4.1. Estimate of resources

- Project phase（マイルストーン期間）毎の必要リソースの見積り
- 見積手法・根拠は別途記録されるべき（Closingの際の振返りに使えるように）

| Project phase | Human resources | Tools | Infrastructure |
| ------------- | --------------- | ----- | -------------- |

### 4.2. Human resources

#### 4.2.1. Project team

| Role | Name | Email | Status |
| ---- | ---- | ----- | ------ |
| PM       |  |
| Engineer |  |
| Engineer |  |

#### 4.2.2. Contractor

- 外部委託メンバーを採用する場合などは記載する

### 4.3. Tools

### 4.4. Infrastructure



## 2.4. Project interface

### 2.4.1. Stakeholders

| Dept | Contact person | Email | Description |
| ---- | -------------- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

### 2.4.2. Communication plan

- コミュニケーションチャネルと手段をリストする。
- 運用プロセス詳細は ISM へ登録する。  
  ここからリンクすることと Issue ticket から参照することにより、同じページへ辿り着けるようにしたい。

##### 2.4.2.1. Regular meeting

| 内容               | 頻度       | コミュニケーション形態 | 担当者             |
| ------------------ | ---------- | ---------------------- | ------------------ |
| 定例会             | 週1回      | 対面                   | プロジェクト管理者 |
| 要求回答、仕様確認 | 適宜       | メール、Slack          | 分析・設計担当者   |
| 要件定義           | 適宜       | メール、Slack          | 分析・設計担当者   |
| プロジェクト報告   | スプリント | 対面、メール           | プロジェクト管理者 |
| 進捗報告           | 毎日       | JIRA                   | プロジェクト管理者 |

##### 2.4.2.2. Ondemand

