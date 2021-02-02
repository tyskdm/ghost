# [@Ghost PMP] Ghost process Project Master Plan

[@doc ghost 0.4]

本書はGhost process開発プロジェクトの基本計画書です。

<br>

## CONTENTS <!-- omit in toc -->

- [1. Project Charter](#1-project-charter)
  - [1.1. Prpose](#11-prpose)
  - [1.2. Goals](#12-goals)
  - [1.3. Scope and Completion criteria](#13-scope-and-completion-criteria)
  - [1.4. Major Milestones](#14-major-milestones)
  - [1.5. Assumptions and Constraints](#15-assumptions-and-constraints)
  - [1.6. Resources and Costs](#16-resources-and-costs)
  - [1.7. Risks](#17-risks)
- [2. [@PIM.SH] Stakeholders](#2-pimsh-stakeholders)
  - [2.1. Project menber](#21-project-menber)
  - [2.2. Quality assurance](#22-quality-assurance)
  - [2.3. Other department](#23-other-department)
  - [2.4. Customer](#24-customer)
- [3. Software Enginnering](#3-software-enginnering)
  - [3.1. Project characteristic conditions overview](#31-project-characteristic-conditions-overview)
  - [3.2. Engineering strategy](#32-engineering-strategy)
  - [3.3. Work packages and Dependencies](#33-work-packages-and-dependencies)
  - [3.4. Schedule](#34-schedule)
  - [3.5. Required resources](#35-required-resources)
  - [3.6. Process plugins](#36-process-plugins)
  - [3.7. Release process](#37-release-process)
- [4. Software Quality Assurance](#4-software-quality-assurance)
  - [4.1. Solution](#41-solution)
  - [4.2. Quality Issues and Risks overview](#42-quality-issues-and-risks-overview)
  - [4.3. Quality assurance strategy](#43-quality-assurance-strategy)
    - [4.3.1. Core concepts](#431-core-concepts)
    - [4.3.2. Engineering areas](#432-engineering-areas)
    - [4.3.3. Policy](#433-policy)
  - [4.4. Quality plan](#44-quality-plan)
  - [4.5. Metrics and Criteria](#45-metrics-and-criteria)
  - [4.6. Quality Monitoring plan](#46-quality-monitoring-plan)
    - [4.6.1. Monitoring cycle](#461-monitoring-cycle)
    - [4.6.2. Criteria](#462-criteria)
    - [4.6.3. Quality report](#463-quality-report)
  - [4.7. Work packages and Dependencies](#47-work-packages-and-dependencies)
  - [4.8. Schedule](#48-schedule)
  - [4.9. Required resources](#49-required-resources)
  - [4.10. Process plugins](#410-process-plugins)
- [5. Project Management](#5-project-management)
  - [5.1. Project management Issues and Risks overview](#51-project-management-issues-and-risks-overview)
  - [5.2. Organization](#52-organization)
  - [5.3. Resources](#53-resources)
  - [5.4. Communication](#54-communication)
  - [5.5. Process plugins](#55-process-plugins)
  - [5.6. Project lifecycle](#56-project-lifecycle)
    - [5.6.1. Lifecycle Model](#561-lifecycle-model)
    - [5.6.2. Milestones](#562-milestones)
  - [5.7. Project Activities](#57-project-activities)
    - [5.7.1. Work packages](#571-work-packages)
    - [5.7.2. Deependencies](#572-deependencies)
  - [5.8. Resources](#58-resources)
    - [5.8.1. Estimate of resources](#581-estimate-of-resources)
    - [5.8.2. Human resources](#582-human-resources)
    - [5.8.3. Tools](#583-tools)
    - [5.8.4. Infrastructure](#584-infrastructure)
  - [5.9. Project interface](#59-project-interface)
    - [5.9.1. Stakeholders](#591-stakeholders)
    - [5.9.2. Communication plan](#592-communication-plan)
- [6. Work product Management](#6-work-product-management)
  - [6.1. Work products](#61-work-products)
    - [6.1.1. Product-related work products](#611-product-related-work-products)
    - [6.1.2. Project-related work products](#612-project-related-work-products)
  - [6.2. Work product Traceability](#62-work-product-traceability)
  - [6.3. Configuration management](#63-configuration-management)
    - [6.3.1. Overview](#631-overview)
    - [6.3.2. `ghost` repository](#632-ghost-repository)
    - [6.3.3. Status reporting](#633-status-reporting)
  - [6.4. Record management](#64-record-management)
    - [6.4.1. Overview](#641-overview)
    - [6.4.2. Google drive `Ghost` folder](#642-google-drive-ghost-folder)
    - [6.4.3. Status reporting](#643-status-reporting)
- [7. Issue Management](#7-issue-management)
  - [7.1. Issue types and plugins](#71-issue-types-and-plugins)
  - [7.2. Escaration rule](#72-escaration-rule)
  - [7.3. Problem Resolution Management](#73-problem-resolution-management)
  - [7.4. Risk Management](#74-risk-management)
  - [7.5. Change Request Management](#75-change-request-management)
- [8. Links and Terminology](#8-links-and-terminology)
  - [8.1. Links to referrences](#81-links-to-referrences)
  - [8.2. Terminology](#82-terminology)
- [9. Quick reference](#9-quick-reference)
  - [9.1. Release schedule](#91-release-schedule)
  - [9.2. Team menbers](#92-team-menbers)
  - [9.3. Stakeholders](#93-stakeholders)
  - [9.4. Resources](#94-resources)

<br>

## 1. Project Charter

[@PIM.PC] 

| @section | PC | Project Charter |
| -------- | -- | --------------- |
| @satisfy | RA.MAN3.BP1.2 | プロジェクト計画書に、プロジェクトのモチベーション、目標、境界を記述する。
|          | RA.MAN3.BP3.2 | プロジェクト計画書に、プロジェクトに与えられた制約情報と、技術的実現可能性評価結果を記述する。

### 1.1. Prpose

- 自動運転自動車の市場進化・拡大に向け、より多く多様なソフトウェア開発企業の市場参入が求められている。
- その際、自動車メーカーによる機能安全規格対応・SOTIF対応など、安全性確保のためのプロセス構築が課題となる。
- 一般に先進的なソフトウェア技術開発を行う企業は大企業ではなく、自動車業界レベルの品質保証プロセスを保有していない。
- 本プロジェクトは、新規参入を目指す（大規模なSPEGをもたない）企業が自社向けソフトウェア開発プロセスを構築する際にベースとして使用可能なベース環境を提供する。

### 1.2. Goals

- Automotive SPICE に[準拠](https://dictionary.goo.ne.jp/word/%E6%BA%96%E6%8B%A0/)し、GitHubやアジャイル開発に親和性の高い組込みソフトウェア開発プロセスを提供する。
- コア部分とアプリケーション部分を分離し、利用者の自社向けプロセス構築が容易になるようコア資産を充実させる。

### 1.3. Scope and Completion criteria

- 車載ECUに搭載される、ソフトウェア開発プロセスをカバーする。
- ハードウェアを含むシステムエンジニアリングに関しては、ソフトウェア要件抽出の拡張として一部をカバーする。
- Automotive SPICE 3.1 のPRMのうち、VDAスコープ＋αのプロセスを対象とする。
- MVPバージョンによる初期リリースにはじまり、継続的に機能拡張を行うものとし、プロジェクト終了時期を当面規定しない。

### 1.4. Major Milestones

- ここは客先と合意している外部インターフェースのみ記述すべき（MVPなどの内部イベントは記載しない）。
- 変えてはならないものが記載されている状態にするため。

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

### 1.5. Assumptions and Constraints

- ソフトウェア開発のスタイルとして、アジャイルを前提する。
  - 新規性の高いソフトウェアにおいてWFモデルの採用は困難であり、且つSOTIFなど安全上の取組自体がイテレーションを前提しつつあることによる。
  - WF型を適用したい場合には、イテレーション数１としてプロセスを運用するものとする。
- 中央集権的なSPEGは存在しないか、あるいは新規性の高い技術開発であることから現場でのテーラーリングが頻発する組織を前提する。
  - つまり、現場にて理解容易であり、改変可能であるプロセステンプレートとする。
  - つまり、大きな予算も工数も投入することはできない。

### 1.6. Resources and Costs

- 当面個人での開発を続ける。

### 1.7. Risks

- ずるずると終わらないこと
- プロセスの具体内容が偏ること
- ユーザーから見て敷居が高くなること

<br>

## 2. [@PIM.SH] Stakeholders

### 2.1. Project menber

| @RACI-VS         | PIM | PM  | SWE | SQA | WPM | ISM | memo |
| --------         | :-: | :-: | :-: | :-: | :-: | :-: | ---- |
| Tsuyoshi Kodama  |  S  |  S  |     |  S  |     |     |
| Tsuyoshi Kodama  | R/A | R/A | C/S | R/A | C/S | C/S |
| Tsuyoshi Kodama  |     |     | R/A |

- [RACI-VS](https://en.wikipedia.org/wiki/Responsibility_assignment_matrix#RACI-VS)

### 2.2. Quality assurance

### 2.3. Other department

### 2.4. Customer

<br>

## 3. Software Enginnering

### 3.1. Project characteristic conditions overview

- Original `Project characteristic conditions chart` is [here]().

### 3.2. Engineering strategy

### 3.3. Work packages and Dependencies

### 3.4. Schedule

### 3.5. Required resources

### 3.6. Process plugins

### 3.7. Release process

<br>

## 4. Software Quality Assurance

>ソフトウェア品質保証プロセスは、そのエンジニアリング活動の結果としてソフトウェアプロダクトが要求された品質を満たすことを**説明可能**且つ**検証可能**にすることを目的とする。

-----

### 4.1. Solution

品質保証に対する基本的な考え方、実現戦略をここで簡潔に示す。  
新たにチームに参画したメンバーが概要を理解できるようにすることを目的とする。

> 品質保証プロセスの目的は、作業成果物およびプロセスがあらかじめ定義された規定および計画を遵守しており、不適合事項が解決され、さらに予防されていることを、独立的かつ客観的に保証することである。

詳細は、[process/QualityAssurance.md] を参照のこと。

-----

### 4.2. Quality Issues and Risks overview

- Original `Project characteristic conditions chart` is [here]().

### 4.3. Quality assurance strategy

#### 4.3.1. Core concepts

以下の3点を、コアコンセプトと位置付ける。

- Own Process Completion（自工程完結）
- Traceability and Consistency（トレーサビリティと一貫性）
- Short feedback loops / cycles（短経路・短周期フィードバック）

#### 4.3.2. Engineering areas

上記に従い、以下の３つのエンジニアリング領域それぞれに品質計画を策定する。

- 要件獲得
- 設計・実装・検証
- 妥当性確認

#### 4.3.3. Policy

本プロジェクトでの品質方針を以下に示す。

### 4.4. Quality plan

### 4.5. Metrics and Criteria

### 4.6. Quality Monitoring plan

品質保証戦略および品質計画が機能していることを監視し、逸脱・問題があれば速やかに修正を行う。

#### 4.6.1. Monitoring cycle

#### 4.6.2. Criteria

#### 4.6.3. Quality report

### 4.7. Work packages and Dependencies

### 4.8. Schedule

### 4.9. Required resources

### 4.10. Process plugins

<br>

## 5. Project Management

| @section | PM | Project Management Plan |
| -------- | -- | --------------- |
| @satisfy | RA.MAN3.BP2.2 | プロジェクト計画書に、プロジェクトライフサイクルを記述する。
|          |               | @note プロジェクトライフサイクルには少なくとも、上位プロジェクト・顧客の開発プロセスにリンクされる主要マイルストーンが含まれること。主要マイルストーンには、エンジニアリングサンプルのリリースおよび最終リリースが含まれる。
|          |               | @rationale 対外インターフェースを伴うマイルストーンを定義することにより、プロジェクトライフサイクルへの外部要求を定義する。
|          | RA.MAN3.BP4.4 | プロジェクト計画書に、プロジェクト活動の定義、プロジェクト活動相互および主要マイルストーンとの依存関係を記述する。
|          | RA.MAN3.BP5.7 | プロジェクト計画書に、プロジェクトの工数およびリソースの見積りを記述する。
|          | RA.MAN3.BP7.3 | プロジェクト計画書に、識別された利害関係者およびそのインターフェースを記述する。

| PMへのコメント |
| -------------- |
| 本パートは Project Management Process を実施するための、プロジェクト固有情報です。

### 5.1. Project management Issues and Risks overview

- プロジェクトマネジメント上の課題とか、リスクってどんなもの？

> プロジェクトマネジメントにより、ソフトウェアエンジニアリング概要計画、ソフトウェア品質保証概要計画を現実化する。

1. リソースを調達し、
2. 体制を整え、
3. 内外のコミュニケーションをとり
4. ゴールへ向かう

### 5.2. Organization

- Structure
- Management system

### 5.3. Resources

- Project phase（マイルストーン期間）毎の必要リソースの見積り
- 見積手法・根拠は別途記録されるべき（Closingの際の振返りに使えるように）

| Project phase | Human resources | Tools | Infrastructure |
| ------------- | --------------- | ----- | -------------- |

### 5.4. Communication

- 外部連携のためのコミュニケーション。チャネルと手段をリストする。
- 運用プロセス詳細は ISM へ登録する。  
  ここからリンクすることと Issue ticket から参照することにより、同じページへ辿り着けるようにしたい。

| 内容               | 頻度       | コミュニケーション形態 | 担当者             |
| ------------------ | ---------- | ---------------------- | ------------------ |
| 定例会             | 週1回      | 対面                   | プロジェクト管理者 |
| 要求回答、仕様確認 | 適宜       | メール、Slack          | 分析・設計担当者   |
| 要件定義           | 適宜       | メール、Slack          | 分析・設計担当者   |
| プロジェクト報告   | スプリント | 対面、メール           | プロジェクト管理者 |
| 進捗報告           | 毎日       | JIRA                   | プロジェクト管理者 |

### 5.5. Process plugins

-------------------

### 5.6. Project lifecycle

#### 5.6.1. Lifecycle Model

- Ghost process が想定するライフサイクルは決まっているので、その資料を参照する。
- 資料を引用して概要をここに示す（図と補足説明程度）
  - 開発新規性などによって、複数パターンがある？（WF・アジャイルの２パターンくらい用意しておく？）

#### 5.6.2. Milestones

- Lifecycle に登場する主要マイルストーンスケジュールを記載する
- ESリリース毎の用途・実装レベルの定義

### 5.7. Project Activities

- 概要のみをここに記述し、詳細は ITS にて管理する

#### 5.7.1. Work packages

- Engineering plan による開発方向性に基づく情報。

1. Feature list
   - Feature list レベルの粒度の機能リスト（とその実現レベル）

2. Development environment
   - 開発用実行環境、検証環境、テストケース作成など

3. Support process
   - ドキュメンテーション
   - 機能安全対応文書作成、など

#### 5.7.2. Deependencies

- 上記 WP と各 ES との依存関係概要

### 5.8. Resources

#### 5.8.1. Estimate of resources

- Project phase（マイルストーン期間）毎の必要リソースの見積り
- 見積手法・根拠は別途記録されるべき（Closingの際の振返りに使えるように）

| Project phase | Human resources | Tools | Infrastructure |
| ------------- | --------------- | ----- | -------------- |

#### 5.8.2. Human resources

##### 5.8.2.1. Project team

| Role | Name | Email | Status |
| ---- | ---- | ----- | ------ |
| PM       |  |
| Engineer |  |
| Engineer |  |

##### 5.8.2.2. Contractor

- 外部委託メンバーを採用する場合などは記載する

#### 5.8.3. Tools

#### 5.8.4. Infrastructure

### 5.9. Project interface

#### 5.9.1. Stakeholders

| Dept | Contact person | Email | Description |
| ---- | -------------- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

#### 5.9.2. Communication plan

- コミュニケーションチャネルと手段をリストする。
- 運用プロセス詳細は ISM へ登録する。  
  ここからリンクすることと Issue ticket から参照することにより、同じページへ辿り着けるようにしたい。

##### 5.9.2.1. Regular meeting

| 内容               | 頻度       | コミュニケーション形態 | 担当者             |
| ------------------ | ---------- | ---------------------- | ------------------ |
| 定例会             | 週1回      | 対面                   | プロジェクト管理者 |
| 要求回答、仕様確認 | 適宜       | メール、Slack          | 分析・設計担当者   |
| 要件定義           | 適宜       | メール、Slack          | 分析・設計担当者   |
| プロジェクト報告   | スプリント | 対面、メール           | プロジェクト管理者 |
| 進捗報告           | 毎日       | JIRA                   | プロジェクト管理者 |

##### 5.9.2.2. Ondemand

<br>

## 6. Work product Management

### 6.1. Work products

本プロジェクトにより作成される作業成果物およびその詳細リスト（Work product List）の所在を以下に示す。
これらの成果物は、特記のない限り以下の２つのリポジトリいずれかで管理される。

1. GitHub - ghost repository
2. Google Drive - Ghost folder

#### 6.1.1. Product-related work products

##### 6.1.1.1. Product deliverables

| Name | Location | Work product list |
| ---- | -------- | ----------------- |
| Ghost process documents | GitHub - ghost repository | /project/WorkproductList.md
| | @note 1 | プロセス文書およびプロセスプラグイン文書から構成される。
| | @note 2 | 文書はMarkdownおよびPlantUMLで作成する。
| Ghost process domain documents | GitHub - ghost repository | /project/WorkproductList.md
| | @note 1 | プロセス設計文書を含む、ドメイン資産となる文書。

##### 6.1.1.2. Requirement analysis documents

| Name | Location | Work product list | Description |
| ---- | -------- | ----------------- | ----------- |
| Requirement analysis documents | Google drive - Ghost folder | [Ghost](https://drive.google.com/drive/folders/1tKrJnmt2DNWR0v39NFvDqSdUYOpNzi8w)
| | @note 1 | Ghost processへの要件分析を行った、主にGoogle spreadsheetによる資料

##### 6.1.1.3. Quality records

| Name | Location | Work product list | Description |
| ---- | -------- | ----------------- | ----------- |

#### 6.1.2. Project-related work products

| Name | Location | Work product list | Description |
| ---- | -------- | ----------------- | ----------- |
| ProjectMasterPlan | GitHub - ghost repository | /project/ProjectMasterPlan.md | THIS document.

### 6.2. Work product Traceability

- トレーサビリティを確立する手段を計画する。
  - rectifyを使用する。詳細情報はサーバー参照。
  - サーバー： 192.168.xxx.xxx

### 6.3. Configuration management

#### 6.3.1. Overview

1. 本プロジェクトの構成管理は、Ghost processのWork product managementプロセスを採用する。
2. 本プロジェクトはProduct variantsのない単一の製品ラインで構成されるため、Ghost processのWork product management processに定めるブランチ戦略をデフォルトのまま採用する。
3. プロダクトリポジトリとプロジェクトリポジトリとを、単一のGitリポジトリ（`ghost`）で制御する。

#### 6.3.2. `ghost` repository

##### 6.3.2.1. Responsibilities

- 本プロジェクトのプロダクト成果物およびプロジェクト成果物の構成制御を行う。

1. プロダクト成果物
   - 事前検討・分析などのための資料を除く、設計文書・プロセス文書。
     - 最終プロダクトであるプロセス文書を起点にWhat-Howのトレーサビリティ関連にある上流文書全てを含む。
     - トレーサビリティ関連のうちWhyに相当する分析レポート、検証記録に相当するテスト結果・レビュー記録などは本リポジトリに含めず、別途関連を示して記録する。（`6.4. 記録管理`参照）

2. プロジェクト成果物
   - プロジェクトの計画・制御に関する文書で、チーム内外を問わず複数メンバーが参照するもの

##### 6.3.2.2. Tools and Repositories

1. ツールとして、GitHubを使用する。→ TALとしてGitHubプラグインを使用する。
2. 右記のリポジトリを使用する。→ https://github.com/tyskdm/ghost

##### 6.3.2.3. Criteria for configuration items

- Work product Listに示す。

##### 6.3.2.4. Naming conventions

- Work product Listに示す。

##### 6.3.2.5. Access rights

| Rights | Person | Memo |
| ------ | ------ | ---------------- |
| Administrator | tyskdm       | Menber Controll, Backup and restore
| User          | Team menber  | ブランチごとのアクセス権は`6.2.2.7. Branch definitions`に示す。
| Viewer        | Stakeholders |

##### 6.3.2.6. Branching model and Workflow

###### 6.3.2.6.1. Branching model

本リポジトリは、ブランチモデルとして[Gitfow](https://www.google.co.jp/search?q=gitflow+workflow)を採用する。

###### 6.3.2.6.2. Branching workflow

Gitflowの基本ワークフローに加え、Ghostプロセスの[Work product management process](https://github.com/tyskdm/ghost)に従う。

##### 6.3.2.7. Branch definitions

| Branch | Owner | Rules or Acceptance criteria | Memo |
| ------ | ----- | ------------------- | ---- |
| master    | tyskdm | MasterBranchAcceptanceCriteria.md | 公開用ブランチ。pumlダイアグラムのpng出力を含み、github上で閲覧可能にしたもの。
| develop   | tyskdm | DevelopBranchAcceptanceCriteria.md | 開発ベースラインブランチ
| feature/* | Software Engineers | FeatureBranchCommitRules.md | コミット時のルール、コミットメッセージルール
| release/* | Software Engineers | ReleaseBranchOperatingRules.md | Rleaseブランチ運用ルール。権限、プロセス。
| hotfix/*  | Software Engineers | HotfixBranchOperatingRules.md | Hotfixブランチ運用ルール。権限、プロセス。

- TODO: Baselineブランチの受入れ基準、レビューアーの定義必要
- [ ] ブランチ命名ルール
- [ ] コミットメッセージルール
- [ ] バージョニングルール

#### 6.3.3. Status reporting

##### 6.3.3.1. Process status measure

- Ghost processのWork product management processに従う。

> - Defines measurements used to determine the status of the  configuration management activities.
>   - [ ] 構成管理活動のステータスを決定するために使用する測定項目を定義している
>   - [ ] 構成管理監査基準を定義している

##### 6.3.3.2. Monitoring and Reporting

- [ ] 構成管理部門によって承認されている
- [ ] 制御された品目のステータスおよび履歴を示した管理記録およびステータス報告が含まれている

### 6.4. Record management

#### 6.4.1. Overview

1. 本プロジェクトの記録管理は、Ghost processのWork product managementプロセスを採用する。
2. 本プロジェクトの記録管理対象には、大きく以下の3種がある。
   1. 要件分析資料 → Google drive
   2. ベースライン受入れレビュー記録・承認記録 → GitHub（プルリクエスト）
   3. 課題記録・対応活動記録 → ITS

#### 6.4.2. Google drive `Ghost` folder

##### 6.4.2.1. Responsibilities

- 本プロジェクトSYS.1における要件分析資料を記録管理する。
- 対象は、設計に影響を与える全ての文書。
  - 構成管理された製品成果物から、トレーサビリティ記録で参照されている全ての文書を含む。
  - 事前検討メモなど上記に該当しないもののうち、設計検討過程の理解に役立つと考えられるものは積極的に含める。

##### 6.4.2.2. Tools and Repositories

1. ツールとして、Google drive（Spreadsheet）を使用する。→ TALとしてGoogle driveプラグインを使用する。
2. 右記のフォルダを使用する。→ [Ghost](https://drive.google.com/drive/folders/1tKrJnmt2DNWR0v39NFvDqSdUYOpNzi8w)

##### 6.4.2.3. Criteria for Record items

- Work product Listに示す。

##### 6.4.2.4. Naming conventions

- Work product Listに示す。

##### 6.4.2.5. Access rights

| Rights | Person | Memo |
| ------ | ------ | ---------------- |
| Administrator | tyskdm       | Menber Controll, Backup and restore
| User          | Team menber  |
| Viewer        | Stakeholders |

##### 6.4.2.6. Workflow

Ghostプロセスの[Work product management process](https://github.com/tyskdm/ghost)に従う。

#### 6.4.3. Status reporting

##### 6.4.3.1. Process status measure

- Ghost processのWork product management processに従う。

> - Defines measurements used to determine the status of the  configuration management activities.
>   - [ ] 構成管理活動のステータスを決定するために使用する測定項目を定義している
>   - [ ] 構成管理監査基準を定義している

##### 6.4.3.2. Monitoring and Reporting

- [ ] 構成管理部門によって承認されている
- [ ] 制御された品目のステータスおよび履歴を示した管理記録およびステータス報告が含まれている

<br>

## 7. Issue Management

### 7.1. Issue types and plugins

- Incident
  - Problem
  - Defect
- Request
  - Chnge request (Scope)
  - Requirement
- Risk
- Engineering
- QA

### 7.2. Escaration rule

- escaration
- report to stakeholders
- log

=====================
- Issue type のリストと、その対応プロセス概要。
- Project は Issue へのアクションの集合であること、課題はチケットして起票すること、その対応は課題タイプ毎にプロセス定義されていること、などを説明する。

### 7.3. Problem Resolution Management

| @section | PRM | Change Request |
| -------- | --- | -------------- |
| @satisfy | RA.SUP9.BP1.2 | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。

### 7.4. Risk Management

| @section | RM | Change Request |
| -------- | -- | -------------- |
| @satisfy | RA.MAN5.BP1.2        | 技術的なリスク、コストに関するリスク、およびタイミング的なリスクを含む、プロジェクトで実施すべきリスク管理範囲を記述する。
|          | RA.MAN5.BP2.3        | プロジェクトレベルのリスク管理戦略を記述する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。

### 7.5. Change Request Management

| @section | CRM | Change Request |
| -------- | --- | -------------- |
| @satisfy | RA.SUP10.BP1.3 | 影響を受ける関係者との窓口定義を記載する。

- プロセスは標準プロセスを参照する
- インフラをここで特定する。



## 8. Links and Terminology

### 8.1. Links to referrences

### 8.2. Terminology


-----

## 9. Quick reference

### 9.1. Release schedule

| Date | Name | Description |
| ---- | ---- | ----------- |
| 08/30 | ES#1 |
| 09/30 | ES#2 |
| 09/30 | ER   |
| 10/05 | PR   |
| 10/05 | PP   |
| 10/05 | MP   |

### 9.2. Team menbers

| Role | Name | email |
| ---- | ---- | ----- |
| PM       |  |
| Engineer |  |
| Engineer |  |

### 9.3. Stakeholders

| Name | email | Description |
| ---- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

### 9.4. Resources

| Name | Description |
| ---- | ----------- |
| [Jira]() |
| [Issue management process]() |
