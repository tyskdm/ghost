# [@ WPM] Workproduct Management

[@doc ghost 0.4]

本プロセスは、アプリケーションレイヤの各プロセスから利用される作業成果物管理プロセスを定めます。

Process roles, Work products, Activitiesの各項目はDescriptionに示す考え方・ルールに基づいていため、Ghostプロセス初見者は最初にDescriptionを通読してください。

<br>

## CONTENTS <!-- omit in toc -->

- [1. DESCRIPTION](#1-description)
  - [1.1. Purpose](#11-purpose)
  - [1.2. Basics](#12-basics)
    - [1.2.1. Work product](#121-work-product)
      - [1.2.1.1. Deliverable and Quarity record](#1211-deliverable-and-quarity-record)
      - [1.2.1.2. Configuration item and Record item](#1212-configuration-item-and-record-item)
    - [1.2.2. Repository](#122-repository)
    - [1.2.3. Main functions](#123-main-functions)
    - [1.2.4. Application Process Interface](#124-application-process-interface)
      - [1.2.4.1. Process management](#1241-process-management)
      - [1.2.4.2. Work product management](#1242-work-product-management)
    - [1.2.5. Sub processes](#125-sub-processes)
  - [1.3. Work product List management process](#13-work-product-list-management-process)
    - [1.3.1. Purpose](#131-purpose)
    - [1.3.2. Work product list](#132-work-product-list)
      - [1.3.2.1. Contents](#1321-contents)
      - [1.3.2.2. Status information to be aggregated](#1322-status-information-to-be-aggregated)
    - [1.3.3. Control](#133-control)
      - [1.3.3.1. Create and Update](#1331-create-and-update)
      - [1.3.3.2. Layout](#1332-layout)
      - [1.3.3.3. Target Scope](#1333-target-scope)
      - [1.3.3.4. Revision history](#1334-revision-history)
  - [1.4. Cnfiguration management process](#14-cnfiguration-management-process)
    - [1.4.1. Purpose](#141-purpose)
    - [1.4.2. Infrastructure](#142-infrastructure)
    - [1.4.3. Git branching strategy](#143-git-branching-strategy)
      - [1.4.3.1. Branching and Workflow model](#1431-branching-and-workflow-model)
      - [1.4.3.2. Baseline branch](#1432-baseline-branch)
      - [1.4.3.3. Branch owner](#1433-branch-owner)
      - [1.4.3.4. Branch acceptance review](#1434-branch-acceptance-review)
      - [1.4.3.5. Branch acceptance criteria](#1435-branch-acceptance-criteria)
    - [1.4.4. Versioning](#144-versioning)
    - [1.4.5. Publication and Notification](#145-publication-and-notification)
    - [1.4.6. Monitoring](#146-monitoring)
    - [1.4.7. Backup and Restore](#147-backup-and-restore)
  - [1.5. Record management process](#15-record-management-process)
    - [1.5.1. Purpose](#151-purpose)
    - [1.5.2. Infrastructure](#152-infrastructure)
    - [1.5.3. Record item management criteria](#153-record-item-management-criteria)
      - [1.5.3.1. 識別](#1531-識別)
      - [1.5.3.2. 検証](#1532-検証)
    - [1.5.4. Versioning](#154-versioning)
    - [1.5.5. Publication and Notification](#155-publication-and-notification)
    - [1.5.6. Monitoring](#156-monitoring)
    - [1.5.7. Backup and Restore](#157-backup-and-restore)
    - [1.4.7. Backup and Restore](#147-backup-and-restore-1)
- [2. PROCESS ROLES](#2-process-roles)
  - [2.1. [@role] Activity Caller](#21-role-activity-caller)
  - [2.2. [@role] System Administrator](#22-role-system-administrator)
  - [2.3. [@role] Branch Stakeholders](#23-role-branch-stakeholders)
- [3. WORK PRODUCTS](#3-work-products)
  - [3.1. [@workproduct] Work product management plan](#31-workproduct-work-product-management-plan)
  - [3.2. [@workproduct] Work products list](#32-workproduct-work-products-list)
- [4. ACTIVITIES](#4-activities)
  - [4.1. [@activity] Initiate](#41-activity-initiate)
  - [4.2. [@activity] Plan](#42-activity-plan)
  - [4.3. [@activity] Monitor](#43-activity-monitor)
  - [4.4. [@activity] CreateRepository](#44-activity-createrepository)
  - [4.5. [@activity] CreateItem](#45-activity-createitem)
  - [4.6. [@activity] RecordItem](#46-activity-recorditem)
  - [4.7. [@activity] DeleteItem](#47-activity-deleteitem)
  - [4.8. [@activity] CreateBranch](#48-activity-createbranch)
  - [4.9. [@activity] MergeRequest](#49-activity-mergerequest)

<br>

## 1. DESCRIPTION

### 1.1. Purpose

Work product Managementプロセスは、プロジェクト/プロセスの実施により作成されるWork productを構成管理もしくは記録管理し、あらかじめ計画された検証実施を確実にする手順を提供する。

#### 参考：Automotive SPICE 3.1の主要関連項目 <!-- omit in toc -->

##### PA 2.2 作業成果物管理プロセス属性 <!-- omit in toc -->

> - 作業成果物管理プロセス属性は、**プロセスによって生成された作業成果物**が適切に管理されている程度を示す測定項目である。このプロセス属性を十分に達成した場合の達成成果は、以下のとおりである。
>   - (a) プロセスの作業成果物に対する要件が定義されている。
>   - (b) 作業成果物の文書化および制御に対する要件が定義されている。
>   - (c) 作業成果物が適切に識別され、文書化され、制御されている。
>   - (d) 作業成果物が計画された取り決めに従ってレビューされ、要件を満足するために必要に応じて調整されている。
>     - 備考 1: 作業成果物の文書化および制御に対する要件には、変更および改訂ステータスの識別、作業成果物の承認および再承認、作業成果物の配布、ならびに該当作業成果物の関連バージョンを必要な時に利用可能にするための要件を含む。
>     - 備考 2: この節で述べられる作業成果物は、プロセス成果を通じたプロセス目的の達成結果から生じるものを指す。

##### SUP.8 構成管理プロセス <!-- omit in toc -->

> - 構成管理プロセスの目的は、**プロセスまたはプロジェクトのすべての作業成果物**の完整性を確立し、維持し、影響を受ける関係者で利用可能にすることである。
>   - (1) 構成管理戦略が策定されている。
>   - (2) プロセスまたはプロジェクトによって作成されたすべての構成品目が、構成管理戦略に従って識別され、定義され、ベースライン化されている。
>   - (3) 構成品目の修正およびリリースが制御されている。
>   - (4) 修正およびリリースが影響を受ける関係者で利用可能とされている。
>   - (5) 構成品目および修正のステータスが記録され、報告されている。
>   - (6) ベースラインの完全性および一貫性が確保されている。
>   - (7) 構成品目の保管が制御されている

##### SUP.2 検証プロセス <!-- omit in toc -->

> - 検証プロセスの目的は、**プロセスまたはプロジェクトの各作業成果物**が、明記された要件を適切に反映していることを確認することである。
>   - (1) 検証戦略が策定され、実装され、維持されている。
>   - (2) すべての必要な作業成果物に対して、検証のための基準が識別されている。
>   - (3) 必要な検証活動が実施されている。
>   - (4) 不具合が識別され、記録され、追跡されている

<br>

### 1.2. Basics

#### 1.2.1. Work product

Work product（作業成果物）とは、プロセス/プロジェクトの実施により作成される成果物を指す。
必ずしもソースコードや設計書などのソフトウェアエンジニアリング関連成果物だけを意味せず、検証記録や議事録、プロジェクト計画書などの成果物を含む。

##### 1.2.1.1. Deliverable and Quarity record

Work product（作業成果物）はその目的から、以下の2種に分類される。

| Term | Origin | Description |
| ---- | ------ | ----------- |
| Deliverable | Ghost | デリバラブル：<br>あるプロセスが他の工程への入力とすることを意図して作成した作業成果物。仕様書・設計書、ソースコード類、プロジェクト計画書、品質計画書、など。
| Quality record | Ghost | 品質記録：<br>デリバラブルの品質を確保するための活動を実施した記録となる作業成果物。レビュー議事録、テスト結果、事前技術調査資料、設計検討記録、ミーティング議事録など。デリバラブル以外を全て品質記録と呼ぶため、名前から想像されるより範囲が広い。

##### 1.2.1.2. Configuration item and Record item

Work product（作業成果物）はその管理方法として、Gitリポジトリを使用し構成管理されるものと、ストレージなどで個別に記録管理されるものがある。
前者をConfiguration items（構成品目）、後者をRecord items（記録品目）と呼ぶ。
各アプリケーションプロセスはそれぞれの成果物を、状況に応じて構成品目あるいは記録品目として管理する。

- 記録品目であっても構成品目と無関係ではなく（たとえばテスト結果記録は、特定の構成・特定のバージョンに関連している）、その関連は当然なんらかの形で記録されなけれなならない。
  その意味で全ての作業成果物は構成制御の対象であり構成品目であると言うこともできるが、その区別はアプリケーションプロセスに任せる。
  Work product managementはあくまでミドルウェアとして、提供する機能の観点から構成品目・記録品目を区別している。
- 一般にデリバラブルは構成管理され品質記録は記録管理されるが、実際にはアプリケーションプロセスのニーズに基づくため完全に一致はしない。

#### 1.2.2. Repository

作業成果物を保管し検索する機能をもつシステムをリポジトリと呼ぶ。
Automotive SPICE V3.1ではいわゆるバージョンコントロールシステムを想定しているが、ここではファイルサーバーのプロジェクト用フォルダ、Confluenceのスペース、プロジェクト用WiKiなどを含む。

構成品目全体のバージョン管理・ブランチ制御など構成制御機能を持つ構成制御リポジトリと、個別アイテムの版歴管理機能のみを持つ記録管理リポジトリに分類する。

- 構成管理リポジトリはGitを前提している（例外を禁止していないが想定していない）。
- 記録管理リポジトリに使用するツールは多種多様である。
  ただし記録管理システムとして最低限の機能（版歴管理・削除アイテムの保管など）を備えないツールの場合は（たとえば単純なファイルサーバー）運用プロセスを定義・運用してこれを補う。

#### 1.2.3. Main functions

Work product managementは、以下の機能を持つ。

1. Basic functions： 基本機能
   - 各作業成果物について、要件・検証基準・検証手順が定義される
   - 各作業成果物登録時に、検証を実施する
   - 登録された作業成果物を、過去のバージョン含めて取得することができる

2. Configuration management： 構成管理
   - 構成管理リポジトリで、構成単位のバージョン管理を行う
   - ブランチ運用ルールが計画され、運用される
   - ベースライン定義とバージョニングルール定義の管理

3. Record managment： 記録管理
   - 記録管理リポジトリで、対象作業成果物が個別に記録され、バージョンを指定して参照できる
   - 検証記録手順とバージョニングルール定義の管理

【 補足 】

- 以下の内容はWork product managementでは規定せず、アプリケーションプロセスの責務とする。
  - いくつのリポジトリを生成し、どのように使い分けるか
  - どのような成果物を作成し、どのような検証基準を定めるか
  - どの作業成果物を構成管理対象とするか、しないか

#### 1.2.4. Application Process Interface

##### 1.2.4.1. Process management

| Activity name | Description |
| ------------- | ----------- |
| Initiate      | プロジェクト開始処理。ファイル保管フォルダ、構成管理システムを稼働開始し、少なくともプロジェクト計画書のための構成管理を開始する。
| Plan          | プロジェクト計画時処理。プロジェクト/プロセスで作成される作業成果物管理情報およびその検証基準をWork product listに記載する。構成管理ブランチルール、バージョニングルールなどを定義する。記録管理ルールを定義する。
| Monitor       | 作業成果物管理の運用状況を取得する。これを定期的に実行することで監視を行う。

##### 1.2.4.2. Work product management

| Activity name    | Description |
| ---------------- | ----------- |
| CreateRepository | Gitリポジトリを作成し、ブランチ運用ルールなどを定義し、Work product list を配置して使用可能にする。管理対象作業成果物リストを作成する。名前付けルール、レビュー記録保管ルール、バージョニングルールを定義する。
| CreateItem       | 構成管理アイテムを追加生成する
| RecordItem       | 記録管理アイテムを追加生成する
| DeleteItem       | 構成管理アイテムを削除する
| CreateBranch     | 構成管理リポジトリにて、Plan()で定めたルールに従ってブランチを生成する
| MergeRequest     | 構成管理リポジトリにて、事前準備を行い、マージリクエストを発行し、レビューを実施・承認し、マージする

#### 1.2.5. Sub processes

Work product managementは、以下の３つのプロセスから構成される。

1. 作業成果物リスト運用プロセス
   - プロセスまたはプロジェクトのすべての作業成果物は、作業成果物リストに登録される。
   - リストには、作業成果物自体への参照の他に、その成果物への要件および検証基準が記載される。
   - 作業成果物の作成・保管の際にこのリストを参照することで、成果物の品質を維持する。

2. 構成管理プロセス
   - ブランチモデルとワークフローの定義、ベースライン化とバージョニングを定義する
   - ベースライン受入れ基準をプロジェクト計画時に定義し、レビュープロセスを従うことでベースライン品質を維持する。

3. 記録管理プロセス
   - 作業成果物を記録し、版歴管理を行い、過去バージョンを含めて参照可能にする。

次章以降、個別に説明を加える。

<br>

### 1.3. Work product List management process

- [ ] このパートの流れを先に説明する。

#### 1.3.1. Purpose

1. 全ての作業成果物を識別し、ステータス監視可能にする。
2. 作業成果物のクライテリアと検証手段を定義する。

#### 1.3.2. Work product list

- 作業成果物を識別し、クライテリアおよび検証基準を登録する管理テーブル。
  - 必要に応じて、プロセスに定める範囲を超える成果物を含めてもよい。
  - 少なくとも、プロダクトリポジトリに含まれるアイテムは全て記載されること。

- リポジトリ・ストレージ固有の管理方法を記載する
  - フォルダ/分類階層の構成
  - ネーミングルール
  - バージョニングルール
  - ブランチルール・ブランチ責任者

##### 1.3.2.1. Contents

| Item | Description |
| ---- | ----------- |
| ID             |
| Name           |
| Type           |
| File reference |
| Criteria       | 内容要件、文書化要件、制御要件？、テンプレート　→ 成果物作成開始時に参照される
| Verification   | 検証基準・検証手段（検証にレビューを含む）　→ 検証、受入れレビュー時に参照される

- ネーミングルールをグループ単位で記載する

##### 1.3.2.2. Status information to be aggregated

機械的に抽出可能な情報をWork product listに記載することはしない（二重管理を避ける）。  
必要なタイミングで以下の情報を機械的に集約してステータスレポートを作成する。

| Item | Description |
| ---- | ----------- |
| Work product revision        | バージョン情報（構成品目では、必ずしも個別のバージョン情報はもたない）
| When updated                 | 更新日時
| Work product status          | ステータス（記載方法および定型化した体系が必要か？）
| When approved                |
| Reference to approval source | 構成品目の場合はプルリクエスト、記録品目の場合はレビュー記録
| 検証実施記録                 | 検証実施記録をもってレビュー実施、承認されるため承認ソース経由で取得可能

- 上記の情報について、リリースパッケージであれば「全てグリーンであること」を確認するレポートを添付する。
- それ以外のケースでは、「ある時点での最新版の状況を知りたい」ということになるはずだが、この場合、どのブランチの話であるかを指定する必要があるなど、もう一段の具体化が必要になりそう。developブランチの健康状態、というのなら意味があるか。

#### 1.3.3. Control

##### 1.3.3.1. Create and Update

1. プロジェクト計画時に、必要となる成果物を記載した作業成果物リストを作成・配置する。
2. 成果物作成時に、リストに情報を追記する。
3. 成果物更新・削除に、情報を更新する。

##### 1.3.3.2. Layout

1. Work product listは、Project master planに所在を記載して参照可能にする。
   - 複数存在してよい。一般に、プロダクト作業成果物リストとプロセス作業成果物リストの２つ以上が想定される。
   - 多段参照でもよい。
   - プロジェクト計画書を全ての情報構造のルートとするため。
2. Gitリポジトリ、Confluence、サーバーなどそれぞれの管理単位毎にリストを配置することを想定している。
   - 情報が集約され参照・維持容易であるように。

##### 1.3.3.3. Target Scope

- 必ずしも個別成果物の全数リストをつくることが目的ではない。どの（種類の）成果物が、どのような目的（要件）で作成されどのように検証されているか、あるいは計画しているか、実現しているかを追跡できることが目的。

- 記載対象
  - 定義されたプロセスにより予め要求された成果物は記載する。
  - 製品リポジトリに含まれる成果物は記載する。
  - 製品リポジトリに含まれないが製品リポジトリが対象とする構成制御対象アイテムは記載する（巨大なバイナリファイルなので別管理されたアイコン画像データ、など）
    - 多重台帳登録を避けるために、これに該当する記録アイテムの管理方法を決めておくか？  
      → フォルダ構成でブランチを表現する、など。

- 記載を要しないものの例
  - アーキテクチャ検討前の技術調査メモなど、最終的な意思決定への影響が小さいが経緯として記録したいもの
  - チーム内の技術ミーティング議事録など、経緯としてのみ記録したいもの
  - その他、特段の検証基準を持たない品質記録など

##### 1.3.3.4. Revision history

- [ ] Work product Listは、記録管理/構成管理されなけれなならない。
  - 登録→削除→新規追加されたアイテムの過去時点の基準を参照する場合
  - 記録品目の、過去の検証基準を参照する場合
  - などに過去バージョンが必要になる

<br>

### 1.4. Cnfiguration management process

#### 1.4.1. Purpose

作業成果物のバージョン制御、ブランチ制御、ベースライン制御、バージョニング、およびベースライン受入れレビューを行う。

- ブランチモデルとワークフローの定義、ベースラインとバージョニングのルールを定義する。
- ベースライン受入れ基準を定義しレビュープロセスを実施することで、ベースライン品質を維持する。

#### 1.4.2. Infrastructure

構成管理ツールとして、GitHubなどのGit Hosting serviceを使用する。

GitをVersion control systemとして使用し、Hosting serviceのMerge request（GitHubではPull request）機能をレビューおよびレビュー記録に使用する。

- Git repositoryに保管することが適切でない構成制御対象アイテム（巨大な画像データなど）は、記録管理したうえでGitリポジトリ内の構成品目から（バージョンを特定して）参照する。
- ツール選択時には、レビューコメント含むバックアップ・復元を可能にするエクスポート・インポート機能を要件に含めること。

#### 1.4.3. Git branching strategy

##### 1.4.3.1. Branching and Workflow model

ブランチおよびワークフローのモデルとして[Gitflow](https://www.google.co.jp/search?q=gitflow+workflow)を採用する。
Gitflowを基本としてプロジェクトごとの必要に応じてカスタマイズする。

カスタマイズはプロジェクト計画書で定義する。

- 例：developブランチの階層化
  - 開発チームが階層化しそれぞれの階層で開発ベースラインを持ちたい場合、developブランチを階層化して2段階のマージリクエスト手順を踏む。  
  `feature/*` --> `sub develop` --> `develop`

- 例：masterブランチの複線化
  - 同一のdevelopブランチから複数の派生プロダクトをリリースしたい場合、masterブランチを複線化する。  
  `develp` --> `release/to/product-A` --> `master/product-A`  
  `develp` --> `release/to/product-B` --> `master/product-B`

##### 1.4.3.2. Baseline branch

> baseline | ISO/IEC/IEEE 24765 | 公式の変更制御手順によってのみ変更が可能な、公式のレビューおよび合意を受けた仕様書または製品で、以後の開発の基準として提供されるものである。

プロジェクト計画書で定める特定のブランチ（標準ではdvelopとmaster）は、後述するブランチ受入れレビュー手順によってのみ更新され、以降の開発の基準となる。
これをベースラインブランチと呼ぶ。また便宜上、ベースラインブランチ以外のブランチを作業ブランチと呼ぶことがある。

Work product managmementは、大きく2系統のベースラインを持つ。

1. 開発ベースライン
   - 開発のベースブランチであるdevelopブランチの各コミットを、開発用ベースラインとする。
   - 逆に、開発用ベースラインの基準を満たさないものをdevelopブランチへマージしてはならない。
   - 必要に応じて特定のコミットに開発バージョンを付与する。
2. リリースベースライン / 製品ベースライン
   - リリースバージョンの歴史であるmasterブランチの各コミットを、リリース / 製品ベースラインとする。
   - 製品リリースに際しては、当該コミットにリリースバージョンを付与する。

- たとえば顧客と合意した要件関連文書のベースラインとなる構成バージョンを特定したい場合など、上記以外のベースラインの取り扱いはアプリケーションプロセスもしくはプラグインで対応する。

##### 1.4.3.3. Branch owner

ベースラインブランチには、ブランチオーナーをアサインする。ブランチオーナーは当該ベースラインの責任者であり、ブランチの品質に責任を負い、ブランチへの受入れ可否を決定する。

- 一般に、製品ベースラインブランチのオーナーはプロジェクトマネージャー（Scrumの場合はPO）である。

##### 1.4.3.4. Branch acceptance review

ベースラインブランチへのマージは、[MergeRequest()](#49-activity-mergerequest)プロセスによってのみ実施する。

MergeRequest()プロセスはGit Hosting serviceのマージリクエスト機能を使用し、受入れレビュー依頼の発行・受入れレビューの実施および受入れ可否判断を行う。

MergeRequest()プロセス概要を以下に示す。

1. Pull requestによるレビューとレビュー記録
2. Pull request発行前のチェックリスト
3. チケットとのリンク
4. Pull requestによるレビューチェックリスト
5. レビュー記録

##### 1.4.3.5. Branch acceptance criteria

ベースラインブランチはそれぞれ固有の受入れ基準を持ち、ブランチ受け入れレビュー時に参照される。
プロジェクト計画時に検討され、作業成果物リストに記載される。

必要に応じてプロジェクトフェーズにより異なる基準を設定して良い。
実際、プロジェクトフェーズが進むにつれて段階的に品質基準を引き上げることはよく行われる。

基準は大きく３つの観点を持つ。

1. 成果物個別の検証
   - 作業成果物リストに記載・定義された成果物個別の検証基準。
   - 成果物種別により、記載項目の充足、コードの静的チェック、ユニットテストなどを含む。

2. 構成単位での検証
   - アプリケーションプロセスにより計画された構成に対する検証基準。
   - 複数の構成品目からなるアイテムの統合テストや、アーキテクチャ妥当性のレビューなどを含む。

3. トレーサビリティと一貫性
   - トレーサビリティの確立および一貫性の確保を検証するための基準。
   - トレーサビリティおよび一貫性は、Automotive SPICE V3.1に定義された概念。
   - 一般にトレーサビリティの確立はツールによる支援を要する。
     そのためトレーサビリティおよび一貫性の検証方法もツールに依存するが、ここではは規定しない。
     プロジェクト毎になんらかのツールを使用してトレーサビリティ管理を行う。

#### 1.4.4. Versioning

- Versionはベースラインブランチに付与する。
  - Masterブランチの全てのコミットへ、バージョンを付与する。
  - Developブランチは必ずしもすべてのコミットに付与せず、アプリケーションプロセスの必要に応じて付与する。
  - 構成品目個別のバージョン付与ルールは、アプリケーションプロセスにて必要に応じて定める。

- Versioning ruleとしてセマンティックバージョニング（https://semver.org/）をデフォルトルールとして採用する。
  - セマンティックバージョニング定義（https://semver.org/）のうち、API仕様を製品外部仕様と読み替える。
    つまり、後方互換性はブラックボックステスト仕様の変更不要性を意味する。
  - プロジェクト要件により変更が必要である場合、プロジェクト計画書で定義する。

#### 1.4.5. Publication and Notification

- ベースラインは、関係先に公開される。
  公開先はプロジェクト計画時および適宜検討され、作業成果物リストに記述する。
- 対象ベースライン更新時に通知される。→ 自動化推奨。

#### 1.4.6. Monitoring

品質保証プロセスにて、構成管理が適切に運用されていることを監視する。
構成管理プロセスはそのためのステータス情報を提供する。
プロジェクト計画時に、監視基準を定義する。

> 要検討課題：
>
> - どのような手段・指標が可能？
>   - ブランチ運用がプロセスに従っていることを確認する方法は？
>   - ブランチアクセプタンステストの実施妥当性確認方法は？
>   - バックアップは行われているか。
>   - 復旧試験は行われているか。

#### 1.4.7. Backup and Restore

定期的なバックアップをプロジェクト計画書にて計画し、実施する。

- Gitリポジトリだけでなく、Pull Requestなどもバックアップ・復旧可能であること。
- 定期的なバックアップ実施とともに、定期的な復元テスト実施を計画する。
- 詳細はTALのプラグインに定める。

<br>

### 1.5. Record management process

#### 1.5.1. Purpose

この記録管理プロセスでは、ファイルサーバーなどの汎用的な情報記録ツールによる成果物管理を対象とする。

汎用情報記録ツールは多種多様であり統一的なプロセスを定義することが困難であるため、ここでは最低限度の共通ルールのみを定める。
不足するルールはツール毎、あるいはプロジェクト毎に定めることとし、何を定めるべきであるかを本パートに定める。

 1. 各種ストレージによる管理
    1. 成果物単位での識別
    2. 個別バージョニング
    3. 各種ストレージ
 2. 保管とレビュー
    1. バージョン含む識別
    2. 検証基準とレビューの実施

- Ghost processでは、GitHubなどGit Hosting Serviceのプルリクエストコメントや、JiraなどIssue Tracking Systemのチケットデータなど専用ツール内の情報も成果物として採用するが、それら専用ツール内情報の管理はそれぞれの運用プロセスにて定める。

#### 1.5.2. Infrastructure

Ghost processでは、GitHubなどのGit Hosting ServiceのプルリクエストコメントやJiraなどIssue Tracking Systemのチケットデータも成果物の記録として採用するが、記録管理プロセスではファイルサーバーなどの汎用的な情報記録ツールを対象とする。
それら記録ツールは多様であり、組織・プロジェクト毎に有効なものを採用する。

例：

- ファイルサーバー
- Confluence
- Google spreadsheet

#### 1.5.3. Record item management criteria

##### 1.5.3.1. 識別

1. Identifier

アイテム単位での識別を行う。
アイテムは、１ファイルとは限らない。

- Confluenceのページ
- 複数ファイルで構成される1アイテム

Confluenceのページ、ファイルサーバーの１ファイル or １フォルダなど、一意に特定可能であること。
パス文字列、URL、識別子文字列など、なんらかの識別手段を持つこと。

2. Version

更新される成果物の場合、バージョン管理が行えること。
これを参照する場合、バージョンを含めて一意に特定可能であり、過去バージョンを含めて閲覧可能であること。

3. 参照方法

記録アイテムを参照する場合は、バージョンを指定して参照すること。

4. Naming rule

文書タイトルなど成果物そのものの名称、あるいはそのファイル名称について、Work product managementでは規定しない。
アプリケーションプロセスにて規定するものとする。

##### 1.5.3.2. 検証

###### 1.5.3.2.1. (1) 検証基準

- Work product Listへ登録し、予め検証基準を定義する。

###### 1.5.3.2.2. (2) 検証プロセス

アプリケーションプロセスにて定める

###### 1.5.3.2.3. (3) 構成制御対象アイテムの場合

構成管理リポジトリ側の作業成果物リストで管理する。記録管理リポジトリ側のWork product Listには、構成管理リポジトリ側のWork product List当該項目への参照を記載する。

- 複数プロジェクト共有リソースなど、構成管理リポジトリ側での管理が不適切である場合は上記の限りでない。構成管理リポジトリ側から、記録管理リポジトリ側のWork product Listを参照する。

#### 1.5.4. Versioning

#### 1.5.5. Publication and Notification

#### 1.5.6. Monitoring

#### 1.5.7. Backup and Restore

#### 1.4.7. Backup and Restore

定期的なバックアップをプロジェクト計画書にて計画し、実施する。

- 定期的なバックアップ実施とともに、定期的な復元テスト実施を計画する。
- 詳細はTALのプラグインに定める。

<br>

## 2. PROCESS ROLES

### 2.1. [@role] Activity Caller

| @id | Name | Description |
| --- | ---- | ----------- |
| AC  | ActivityCaller | Activity を呼び出した本人。本プロセスで特別なロールを定義しない。

### 2.2. [@role] System Administrator

| @id | Name | Description |
| --- | ---- | ----------- |
| SA | SystemAdministrator | Git Hosting server、File storage など、作業成果物を管理するためのツール/システムの管理者。

### 2.3. [@role] Branch Stakeholders

| @id | Name | Description |
| --- | ---- | ----------- |
| BO | BranchOwner | プロジェクト計画書もしくはWork product Listに定められた、当該ブランチのオーナー
| BR | BranchReviewer | プロジェクト計画書もしくはWork product Listに定められた、当該ブランチ受入れレビューのレビューアー

<br>

## 3. WORK PRODUCTS

### 3.1. [@workproduct] Work product management plan

| @id | Name | Description |
| --- | ---- | ----------- |
| WMP | Work product management Master Plan | プロジェクトニーズに基づく作業成果物管理マスタープラン

### 3.2. [@workproduct] Work products list

| @id | Name | Description |
| --- | ---- | ----------- |
| WPL | Work Products List | 管理対象となる作業成果物のリスト。種別毎のテンプレート、検証基準などの情報が定義される。

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Initiate

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| INI | Initiate      | プロジェクト開始処理。
|     | @Note         | ファイル保管フォルダ、構成管理システムを稼働開始し、少なくともプロジェクト計画書のための構成管理を開始する。

#### _[@P] PURPOSE_ <!-- omit in toc -->

- Work product managementを、プロジェクトの実情にあわせて計画する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

1. プロジェクト基本計画書

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Initiate]](WorkproductManagement/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T?  | Work product list の作成 | 作業成果物リストを作成する。テンプレートがある場合にはその所在、検証基準を定義する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-wpminitiate).T1();

1. プロジェクトの作業成果物の把握：
   - アプリケーションプロセスの基本計画から、プロジェクトを通じて作成される作業成果物を把握する。

2. リポジトリの使用計画：
   - 作業成果物の構成管理に使用するGitリポジトリおよび記録管理に使用するリポジトリを計画する。  
   - 計画は、リポジトリをいくつ用意し、それぞれ何に使うのかを明らかにする。

3. リポジトリの生成：
   - 各リポジトリを生成する：CreateRepository()

4. リポジトリ情報のプロジェクト基本計画書への登録：
   - プロジェクト基本計画書に、各リポジトリの情報を登録する。

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | 作業成果物管理計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#activity-wpminitiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product Management Plan | 作業成果物管理計画
| D2  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 作業成果物管理計画 |

<br>

### 4.2. [@activity] Plan

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| PLN | Plan          | プロジェクト計画時処理。
|     | @Note         | プロジェクト/プロセスで作成される作業成果物管理情報およびその検証基準をWork product listに記載する。構成管理ブランチルール、バージョニングルールなどを定義する。記録管理ルールを定義する。

#### _[@P] PURPOSE_ <!-- omit in toc -->

- Work product managementを、プロジェクトの実情にあわせて計画する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

1. プロジェクト基本計画書

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Initiate]](WorkproductManagement/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T?  | Work product list の作成 | 作業成果物リストを作成する。テンプレートがある場合にはその所在、検証基準を定義する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-wpminitiate).T1();

1. 作業成果物リストの更新：
   - アプリケーションプロセスの計画更新に応じて、各Work product Listを更新する。
   - 必要に応じてリポジトリ配置の調整を行う。

2. リポジトリのバックアップ・復旧を計画し実行に移す：
   - リポジトリごとの重要性・特性などに応じて、バックアップの頻度・タイミング、復旧テスト実施タイミングを決定する。
   - 担当者をアサインし、運用を開始する。

3. 運用監視観点を定義する：
   - アプリケーションプロセス（SQAプロセス）の計画に従い、モニタリング時の運用監視観点を定義する。
   - 必要に応じてプロジェクトフェーズごとの段階的基準を設定する。

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.3. [@activity] Monitor

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| MON | Monitor       | 作業成果物管理の運用状況を取得する。
|     | @Note         | これを定期的に実行することで監視を行う。

#### _[@P] PURPOSE_ <!-- omit in toc -->

- Work product managementプロセスの運用ステータスを収集する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

1. プロジェクト基本計画書（作業成果物管理プロセス基本計画）

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Initiate]](WorkproductManagement/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T?  | Work product list の作成 | 作業成果物リストを作成する。テンプレートがある場合にはその所在、検証基準を定義する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-wpminitiate).T1();

1. 作業成果物管理プロセス運用状況の取得：
   - 作業成果物管理プロセス基本計画に従い、運用状況を確認し、記録する。

2. 問題の識別と記録：
   - 運用状況が基本計画に定めた基準に満たない場合、問題点を識別して記録する。
   - 補足：課題管理プロセス::問題管理チケットを発行する。

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.4. [@activity] CreateRepository

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| CRR | CreateRepository | 構成管理用・記録管理用のリポジトリを作成し、管理運用を開始する。
|     | @Note            | 構成管理の場合はGitリポジトリを作成し、ブランチ運用ルールなどを定義し、Work product list を配置して使用可能にする
|     | @Note            | 管理対象作業成果物リストを作成する。名前付けルール、レビュー記録保管ルール、バージョニングルールを定義する。

#### _[@P] PURPOSE_ <!-- omit in toc -->

- Work product managementを、プロジェクトの実情にあわせて計画する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

1. プロジェクト基本計画書

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Initiate]](WorkproductManagement/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T?  | Work product list の作成 | 作業成果物リストを作成する。テンプレートがある場合にはその所在、検証基準を定義する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-wpminitiate).T1();

1. リポジトリの種別・ツール・対象管理品目を定義する：
   - 構成管理用か、記録管理用か
   - ツールはなにか： GitHub/GitLab/BitBucket...、File Server/Confluence/WiKi/Google drive...
   - 管理対象品目はなにか
   - 以上を基本計画書に記載する。

2. 作業成果物リストを作成し、運用ルールを定義する：
   - 作業成果物リストをテンプレートから作成し、以下の運用ルールを定義・記載する
     → 定義すべき事項がテンプレートに指定されている
   - 基本項目
     - フォルダ構成
     - 命名ルール
     - バージョニングルール
     - 更新時の通知先
   - 構成管理リポジトリの場合
     - ブランチモデルとワークフロー
     - ブランチオーナー
     - ベースラインルールと受入れ基準
     - その他、作業成果物リストテンプレートに指定された項目
   - 記録管理リポジトリの場合
     - レビューワークフロー
     - レビュー記録保管方法
     - 外部からバージョンを特定して参照する方法

3. リポジトリを起動し作業成果物リストを登録する：
   - システムリソースを割り当て、リポジトリを起動する。
   - 作業成果物リストを保管して管理を開始する（当該リポジトリ自身で管理することを推奨）
   - 作業成果物リストへの参照を基本計画書へ記載する。（全ての管理情報は、基本計画書から辿り着けること）

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.5. [@activity] CreateItem

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| CRI | CreateItem       | 構成管理アイテムを追加生成する

#### _[@P] PURPOSE_ <!-- omit in toc -->

- 新規に作成される作業成果物を管理対象として登録し、検証基準・管理基準を明確にする。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Create]](WorkproductManagement/Create_Deliverable.png) |
| :-: |
| fig.4.2 'Create_Deliverable' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

1. 作業成果物を作業成果物リストに追記する
   - 当該作業成果物がWork product Listに未記載の場合、要件・検証基準などとともにリストへ追記する。

2. 作業成果物をリポジトリへ保管する
   - Gitリポジトリによる構成制御対象であるが、リポジトリに含めることが適切でない場合（意匠用の巨大なバイナリイメージファイルなど）、記録管理リポジトリへ保管し参照してよい（検証基準などのデータは構成管理リポジトリ側へ登録する。詳細はｘｘｘ）

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.6. [@activity] RecordItem

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| RCI | RecordItem       | 記録管理アイテムを追加生成する

#### _[@P] PURPOSE_ <!-- omit in toc -->

- 作成された記録管理アイテムを追加する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Create]](WorkproductManagement/Create.png) |
| :-: |
| fig.4.2 'Create' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

1. 作業成果物リストへの登録
   - 当該作業成果物が作業成果物リストに未登録である場合[CreateItem]([@ CreateItem])を実施する。

2. 作業成果物リストに従いレビューを実施する
   - 作業成果物の検証基準にレビューが指定されている場合、作業成果物に定義されたレビュープロセスに従ってレビューを実施する。
   - レビューが指定されていない場合、検証基準を満たしていることを確認する。

3. 作業成果物を記録する。
   - 作業成果物リストに定められた方法で記録する。
     - 記録方法例：
       - ローカルで作成・編集したファイルを、ファイルサーバーの指定フォルダーへコピーする
       - Confluence上で編集・作成したページを、Version付与してPublishする
       - Google drive上で編集・作成したスプレッドシートに、Version付与する

4. 通知先へ通知を行う。
   - 作業成果物リストに記載された通知先へ、通知を行う

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.7. [@activity] DeleteItem

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| DLI | DeleteItem       | 管理対象アイテムを削除する

#### _[@P] PURPOSE_ <!-- omit in toc -->

- リポジトリで管理されているアイテムを削除する

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Create]](WorkproductManagement/Create.png) |
| :-: |
| fig.4.2 'Create' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

1. アイテムをリポジトリから除去する
   - 構成管理アイテムの場合はリポジトリから削除する
   - 記録管理アイテムの場合は運用ルールに定められた削除データ保管フォルダへ移動する

2. 作業成果物リストの当該アイテム情報を更新する
   - 構成管理アイテムの場合はリストから削除する
   - 記録管理アイテムの場合は当該アイテムのステータスを削除済みに変更する

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.8. [@activity] CreateBranch

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| CRB | CreateBranch     | 構成管理リポジトリにて、Plan()で定めたルールに従ってブランチを生成する

#### _[@P] PURPOSE_ <!-- omit in toc -->

- 構成管理リポジトリに新規ブランチを作成する

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Create]](WorkproductManagement/Create.png) |
| :-: |
| fig.4.2 'Create' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

1. ブランチ権限・基準の確認
   - 作業成果物リストに定義された運用ルールに従い、権限の確認を行う
   - ブランチ開始基準・作業内容定義基準・ブランチ終了基準を確認する
     補足： ブランチは単一の課題チケットに対応し、上記基準はチケットに記載されている

2. ブランチを作成する
   - 作業成果物リストに定義された運用ルールに従い、ブランチを作成する
     補足： ブランチモデル・ブランチ命名規則がルールに定められている

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。

<br>

### 4.9. [@activity] MergeRequest

| Id | Activity name | Description |
| -- | ------------- | ----------- |
| MR | MergeRequest     | 構成管理リポジトリにて、事前準備を行い、マージリクエストを発行し、レビューを実施・承認し、マージする

#### _[@P] PURPOSE_ <!-- omit in toc -->

- 作業ブランチでの作業結果をベースライン化するために、ベースラインブランチへのマージリクエストを発行し、受入れレビューを実施する。

#### _[@E] ENTRY CRITERIA / INPUT_ <!-- omit in toc -->

#### _[@F] ACTIVITY FLOW_ <!-- omit in toc -->

| ![[@fig:puml PUML.WPM::Create]](WorkproductManagement/Create.png) |
| :-: |
| fig.4.2 'Create' activity flow

#### _[@T] TASKS_ <!-- omit in toc -->

1. 事前検証を行う
   - リポジトリ運用ルールに定義されたブランチ受入れ基準に従い、事前検証を行う。
   - 補足： レビュー、静的検証、動的テストなどの全ての検証実施および検証記録の保管を行う。

2. MergeRequestを発行する
   - GitHub/GithostingService上で、PullRequest/MergeRequestを発行する
   - 発行に際し、受入れレビュー議事録用テンプレートの貼付けおよび事前検証記録の添付を行う。

3. レビューの実施
   - リポジトリ運用ルールに定義されたレビューアーによりレビューを実施する
   - PullRequest/MergeRequestのコメント機能により議事録を記録する

4. 差し戻し
   - レビューを通じて修正することが困難な大きな指摘が生じた場合には、差し戻しを行う。
   - PullRequest/MergeRequestをキャンセルする

5. 承認とマージ
   - リポジトリ運用ルールに定義されたベースラインブランチのオーナーが、最終的な受け入れ承認を行い議事録に記録する。
   - ベースラインブランチオーナーが、マージの受入れを実施する。

6. ベースラインバージョンの付与
   - ブランチオーナーが、ベースラインブランチに（定義に従い）バージョンタグを付与する

7. 通知（自動？）
   - 自動化されていない場合は通知を行う。単にウォッチでよい？

#### _[@V] VERIFICATION_ <!-- omit in toc -->

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Work product List | 作業成果物リスト

#### _[@Q] QUALITY RECORDS_ <!-- omit in toc -->

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### _[@X] EXIT CRITERIA / OUTPUT_ <!-- omit in toc -->

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | 更新された作業成果物リスト | 新規登録された作業成果物は、その管理基準・検証基準が明示されていること。
