# [@Ghost PMP] Project Master Plan

[@doc ghost 0.4]

## Contents

1. [Project Charter](#1-pimpc-project-charter)
2. [Stakeholders](#2-pimsh-stakeholders)
3. [Software Enginnering](#3-software-enginnering)
4. [Software Quality Assurance](#4-software-quality-assurance)
5. [Project Management](#5-project-management)
6. [Work product Management](#6-work-product-management)
7. [Issue Management](#7-issue-management)

<br>

## 1. [@PIM.PC] Project Charter

### 1.2. Prpose

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

### 3.5. Process plugins

#### 3.5.1. Release process

<br>

## 4. Software Quality Assurance

>ソフトウェア品質保証プロセスは、そのエンジニアリング活動の結果としてソフトウェアプロダクトが要求された品質を満たすことを**説明可能**且つ**検証可能**にすることを目的とする。

### 4.1. Quality Issues and Risks overview

- Original `Project characteristic conditions chart` is [here]().

### 4.2. Quality assurance strategy

#### 4.2.1. Core concepts

以下の3点を、コアコンセプトと位置付ける。

- Own Process Completion（自工程完結）
- Traceability and Consistency（トレーサビリティと一貫性）
- Short feedback loops / cycles（短経路・短周期フィードバック）

#### 4.2.2. Engineering areas

上記に従い、以下の３つのエンジニアリング領域それぞれに品質計画を策定する。

- 要件獲得
- 設計・実装・検証
- 妥当性確認

#### 4.2.3. Policy

本プロジェクトでの品質方針を以下に示す。

### 4.3. Quality plan

### 4.4. Metrics and Criteria

### 4.5. Quality Monitoring plan

品質保証戦略および品質計画が機能していることを監視し、逸脱・問題があれば速やかに修正を行う。

#### 4.5.1. Monitoring cycle

#### 4.5.2. Criteria

#### 4.5.3. Quality report

### 4.6. Work packages and Dependencies

### 4.7. Schedule

### 4.8. Required resources

### 4.9. Process plugins

<br>

## 5. Project Management

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

<br>

## 6. Work product Management

### 6.1. Work product types

- ソースコード、設計書など、主要作業成果物を計画する。
  - Types / tools （アーキ設計書はMSワードで作成する、アプリモデルはEAで、など）
  - Templates

### 6.2. Configuration

- Repository
- Branch strategy
- Baseline

### 6.3. Traceability

- トレーサビリティを確立する手段を計画する。
  - rectifyを使用する。詳細情報はサーバー参照。
  - サーバー： 192.168.xxx.xxx

### 6.4. Verification

- Criteria
- Phase

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
