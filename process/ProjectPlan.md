# [@ PP] Ghost project plan

[@doc ghost 0.4, @docid PJIM.W.PP, @template ghost/process/templates/ProjectPlan]

| # | 大項目 | 中項目 | 説明 |
| - | ------ | ------ | ---- |
| 1 | プロジェクト憲章 |
| 2 | SWEプラン |
| 2.1 | 

## 1. [@ PC] Project Charter

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | 作業範囲の定義 | プロジェクトの目標、モチベーション、および境界を識別する。<br>Define the scope of work. Identify the project's goals, motivation and boundaries.
| BP2     | プロジェクトのライフサイクルの定義 | プロジェクトの範囲、背景、規模、および複雑性に適したプロジェクトのライフサイクルを定義する。
|         | @note 1      | 一般的にこのプラクティスは、プロジェクトライフサイクルおよび顧客の開発プロセスが互いに一貫していることを意図する。

### 1.1. Goals

#### _Description_

- プロジェクトのゴールを定義する。
- 詳細な達成基準はプロジェクト活動を通じて別途定めるのが、プロジェクトの見積りに大きな影響を及ぼすものはここで確認しておく。

#### _Example_

- Automotive SPICE に対応可能で、Github やアジャイル開発指向な組込みソフトウェア開発プロセスを提供する。
- コア部分とアプリケーション部分を分離し、利用者の自社向けプロセス構築が容易になるようコア資産を充実させる。

### 1.2. Motivation

- 自動運転自動車の市場進化・拡大に向け、より多く多様なソフトウェア開発企業の市場参入が求められている。
- その際、自動車メーカーによる機能安全規格対応・SOTIF対応など、安全性確保のためのプロセス構築が課題となる。
- 一般に先進的なソフトウェア技術開発を行う企業は大企業ではなく、自動車業界レベルの品質保証プロセスを保有していない。
- 本プロジェクトは、新規参入を目指す（大規模なSPEGをもたない）企業が自社向けソフトウェア開発プロセスを構築するための環境を提供する。

### 1.3. Scope and Lifecycle

- 車載ECUに搭載される、ソフトウェア開発プロセスをカバーする。
- ハードウェアを含むシステムエンジニアリングに関しては、ソフトウェア要件抽出の拡張として一部をカバーする。
- Automotive SPICE 3.1 のPRMのうち、VDAスコープ＋αのプロセスを対象とする。
- MVPバージョンによる初期リリースにはじまり、継続的に機能拡張を行うものとし、プロジェクト終了時期を当面規定しない。
  - ここでのライフサイクルは主に寿命を扱う（いつまでをカバーすればよいか）

### 1.4. Milestone schedule

- 漸進的に開発を進めるが、スケジュールは現状未定とする。
- MVPリリース後、足場が安定したのちに次のスケジュールを検討する。

### 1.5. Assumptions and Constraints

- ソフトウェア開発のスタイルとして、アジャイルを前提する。
  - 新規性の高いソフトウェアにおいてWFモデルの採用は困難であり、且つSOTIFなど安全上の取組自体がイテレーションを前提しつつあることによる。
  - WF型を適用したい場合には、イテレーション数１としてプロセスを提供するものとする。
- 中央集権的なSPEGは存在しないか、あるいは新規性の高い技術開発であることから現場でのテーラーリングが頻発する組織を前提する。
  - つまり、現場にて理解容易であり、改変可能であるプロセステンプレートとする。
  - つまり、大きな予算も工数も投入することはできない。

### 1.6. Resources and Costs

- 当面個人での開発を続ける。

### 1.7. Risks

- 日程の縛りがないことから、特記すべきリスクなし。

## 2. [@ SWE] Software Engineering Plan

### 2.1. 開発方針

主要な技術選択、実現方針など

- アーキテクチャ概要
- ドメイン毎の主要技術課題、リスクなど

### 2.2. Verification Strategy

SWE.4.BP1: 回帰戦略を含むソフトウェアユニット検証戦略の策定
SWE.5.BP1: ソフトウェア統合戦略の策定
SWE.5.BP2: 回帰テスト戦略を含むソフトウェア統合テスト戦略の策定
SWE.6.BP1: 回帰テスト戦略を含むソフトウェア適格性確認テスト戦略の策定

## 3. [@ SQA] Quality Assurance Plan

どのように品質を証明するか、その戦略。
ソフトウェアレベルでのV&Vは、SWEにて定める。ここでは、WPQと、プロセス品質について示す。

### 3.1. Solution

品質保証に対する基本的な考え方、実現戦略をここで簡潔に示す。  
新たにチームに参画したメンバーが概要を理解できるようにすることを目的とする。

> 品質保証プロセスの目的は、作業成果物およびプロセスがあらかじめ定義された規定および計画を遵守しており、不適合事項が解決され、さらに予防されていることを、独立的かつ客観的に保証することである。

詳細は、[process/QualityAssurance.md] を参照のこと。

### 3.2. [@ WPQ] Workproduct Quality

#### 3.2.1. Verification

#### ~~3.2.2. Configuration management~~

##### Repository

##### Branching strategy

#### 3.2.3. Review and Approval

### 3.3. [@ PQ] Process Quality

## 4. [@ PM] Project Management Plan

- どのようにプロジェクトマネジメントを行うか、その計画。

| @USDM | Name | Description |
| -ｰ--- | ---- | ----------- |
|          | RA.MAN3.BP4.4 | プロジェクト計画書に、プロジェクト活動の定義、プロジェクト活動相互および主要マイルストーンとの依存関係を記述する。
|          | RA.MAN3.BP5.7 | プロジェクト計画書に、プロジェクトの工数およびリソースの見積りを記述する。
|          | RA.MAN3.BP7.3 | プロジェクト計画書に、識別された利害関係者およびそのインターフェースを記述する。

### 4.1. Project lifecycle

#### 4.1.1. Lifecycle Model

- Ghost process が想定するライフサイクルは決まっているので、その資料を参照する。
- 資料を引用して概要をここに示す（図と補足説明程度）
  - 開発新規性などによって、複数パターンがある？（WF・アジャイルの２パターンくらい用意しておく？）

#### 4.1.2. Milestones

- Lifecycle に登場する主要マイルストーンスケジュールを記載する
- ESリリース毎の用途・実装レベルの定義

### 4.2. Project Activities

- 概要のみをここに記述し、詳細は ITS にて管理する

#### 4.2.1. Work packages

- Engineering plan による開発方向性に基づく情報。

1. Feature list
   - Feature list レベルの粒度の機能リスト（とその実現レベル）

2. Development environment
   - 開発用実行環境、検証環境、テストケース作成など

3. Support process
   - ドキュメンテーション
   - 機能安全対応文書作成、など

#### 4.2.2. Deependencies

- 上記 WP と各 ES との依存関係概要

### 4.3. Resources

#### 4.3.1. Estimate of resources

- Project phase（マイルストーン期間）毎の必要リソースの見積り
- 見積手法・根拠は別途記録されるべき（Closingの際の振返りに使えるように）

| Project phase | Human resources | Tools | Infrastructure |
| ------------- | --------------- | ----- | -------------- |

#### 4.3.2. Human resources

##### Project team

| Role | Name | Email | Status |
| ---- | ---- | ----- | ------ |
| PM       |  |
| Engineer |  |
| Engineer |  |

##### Contractor

- 外部委託メンバーを採用する場合などは記載する

#### 4.3.3. Tools

#### 4.3.4. Infrastructure

### 4.4. Project interface

#### 4.4.1. Stakeholders

| Dept | Contact person | Email | Description |
| ---- | -------------- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

#### 4.4.2. Communication plan

- コミュニケーションチャネルと手段をリストする。
- 運用プロセス詳細は ISM へ登録する。  
  ここからリンクすることと Issue ticket から参照することにより、同じページへ辿り着けるようにしたい。

##### 4.4.2.1. Regular meeting

| 内容               | 頻度       | コミュニケーション形態 | 担当者             |
| ------------------ | ---------- | ---------------------- | ------------------ |
| 定例会             | 週1回      | 対面                   | プロジェクト管理者 |
| 要求回答、仕様確認 | 適宜       | メール、Slack          | 分析・設計担当者   |
| 要件定義           | 適宜       | メール、Slack          | 分析・設計担当者   |
| プロジェクト報告   | スプリント | 対面、メール           | プロジェクト管理者 |
| 進捗報告           | 毎日       | JIRA                   | プロジェクト管理者 |

##### 4.4.2.2. Ondemand

## 5. [@ ISM] Issue Management Plan

- Issue type のリストと、その対応プロセス概要。
- Project は Issue へのアクションの集合であること、課題はチケットして起票すること、その対応は課題タイプ毎にプロセス定義されていること、などを説明する。

### 5.1. Problem Resolution Management

| @section | PRM | Change Request |
| -------- | --- | -------------- |
| @satisfy | RA.SUP9.BP1.2 | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。

### 5.2. Risk Management

| @section | RM | Change Request |
| -------- | -- | -------------- |
| @satisfy | RA.MAN5.BP1.2        | 技術的なリスク、コストに関するリスク、およびタイミング的なリスクを含む、プロジェクトで実施すべきリスク管理範囲を記述する。
|          | RA.MAN5.BP2.3        | プロジェクトレベルのリスク管理戦略を記述する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。

### 5.3. Change Request Management

| @section | CRM | Change Request |
| -------- | --- | -------------- |
| @satisfy | RA.SUP10.BP1.3 | 影響を受ける関係者との窓口定義を記載する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。

## 6. [@ WPM] Work product Management Plan

### 6.1. Ghost documentation

### 6.2. Identifier Namespace

| Namespece | Name | Description |
| --------- | ---- | ----------- |
| P      | Project | プロジェクトに関する情報空間
| P.WP   | Work product | 作業成果物識別子の名前空間
|
| SY     | System Engineering |
| SY.RQ  |  |
| SY.RT  |  |
| SY.AD  | System Architectual Design |
| SY.AT  |  |
|
| SW     | Software Engineering |
| SW.RQ  |  |
| SW.RT  |  |
| SW.AD  | Software Architectual Design |
| SW.AT  |  |
| SW.UD  |  |
| SW.UT  |  |
|
| SQA    | Software Quality Assurance |

## 7. Links and Terminology

### 7.1. Links to referrences

### 7.2. Terminology
