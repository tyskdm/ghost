# [@ SWAD] Ghost Process Architectural Design

Ghost process のアーキテクチャ設計。

対象は、SWE team と SQA team だが、まずは SWE team から。

> Outcome にリソース消費目標の設定、とある。メンバーがこれに使う時間を目標として設定できるといいなあ。

ソフトウェアコンポーネントレベルまで分割する。
- プロセスコンポーネントまで分割する。
- In/Out + Activity 形式のプロセス定義はここで実施する（利用者のための説明は含まない、橋本さんが欲しがってたやつ）。


## memo

- プロセス説明要素
  1. 目的
  2. 成果
  3. 入力（参考情報 ＝ 制約を課すものではない）
  4. アクティビティ
  5. 出力成果物（情報アイテム）

## 1. Concepts

### 3階層のプロセス

1. アプリ層
2. ミドルウェア層
3. ツール抽象化層（Tool Abstraction Layer）

### 2team 共通インフラ

- SW Engineering team と SW QA team は共通のインフラへ直接アクセスする。
- これにより、ステータス情報の流通を自動化したい。
- インフラ層へのアクセス権を公開することにより、ステークホルダーが自由に最新の情報にアクセス可能にする。
  - [ ] これもインフラ層への要件になりそう。

## 2. Structure

3階層７コンポーネントになる。

ブロック定義を行う。ブロック定義図はEAにて。

| @Block Id | Name | Description |
| --------- | ---- | ----------- |
| PM-gh000  | Project Management Process   |
| SE-gh000  | Software Engineering Process |
| QA-gh000  | Quality Assurance Process    |

### 2.1. アプリ層

SWE team 内部を、さらに Eng と PM とに分割する。

- PM と Eng は、チケットを主要な媒介としてインターフェースする
- チケットは、課題と対応アクティビティの実施を管理する

#### 2.1.1. [@ PM.REQ] Project Management Process

| @Section | SWAD.PM.REQ |
| -------- | ----------- |
| Type        | Requirement
| SatisfiedBy | SWAD.PM-gh000 Project Managemnet Process
| Description | Requirements for Project Management Process


| @Reqt Id | Name | Description |
| -------- | ---- | ----------- |
| 1-gh000   | func requirement | some reqt
| | @trace  | @copy ASPICE.31.MAN3.BP3
| 2-gh000   | nonf requirement | other reqt
| | @trace  | @rifine SYRQ.FR.CR.3-gh000

| @Reqt Id | Name | Description |
| -------- | ---- | ----------- |
| 3-gh000   | func requirement | some reqt
| | @trace  | @copy ASPICE.31.MAN3.BP3
| 4-gh000   | nonf requirement | other reqt
| | @trace  | @rifine SYRQ.FR.CR.3-gh000

1. 顧客やステークホルダーからの要求・インシデントをもとに、Issueを整理する。
   - WBSと呼んでも差し支えないが、プロジェクトの進行に連れ、Issueは不具合や変更要求など予め計画できないものを含む。
   - PM単独ではなく、Engと共同作業となることのほうが自然

2. 計画する
   - Issue に優先度をつけ、顧客ニーズとリソース・作業見積から時間軸上に配置する

3. 配置されたIssue（チケット）を、Engに渡す（そしてモニタリング&コントロールに入る）

#### 2.1.2. Eng

チケットを消化する。
PMを補佐する。

#### 2.1.3. SQA



### 2.2. ミドル層

#### 2.2.1. Work product management

成果物の構成管理とともに、検証されているかどうかの確認も行う。  
つまり、検証された、一貫性のあるものがリポジトリに管理されていることを確認するメカニズムを含む。

##### 対応プロセス

1. SUP.2: Verification
2. SUP.7: Documentation
2. Sup.8: Configuration Management

##### Interface

WPM.Init()

WPM.Branch()

WPM.MergeRequest()

WPM.AddItem()

WPM.DeleteItem()

WPM.BackUp()

WPM.Restore()


#### 2.2.2. Issue management

チケットに記録された Issue およびその対応 Activity を管理する。  
以下の Issue type がある（ここはテーラーリング対象になりそう）。

1. Requirement
2. Incident
3. Risk
4. Problem
5. Epic
6. Story
7. Task
8. Defect
9. Release

##### 対応プロセス

1. SYS
2. SWE
3. SUP.4: Joint Review
4. SUP.9: Problem Resolution Management
5. SUP.10: Change Request Management

##### Interface

ISM.Init()
I make the document clean up to date.
ISM.Requirement()

ISM.Incident()

ISM.Risk()

ISM.Problem()

ISM.Engineering()

ISM.Task()

ISM.Defect()

ISM.Release()

ISM.BackUp()

ISM.Restore()


### 2.3. Infrastructure Abstraction Layer

#### Github / Git hosting service

Github / bitbucket / GitLab などのような Git hosting service を抽象化する。

1. Version controll
2. Branch / Merge Controll
3. Pull request including comment & review system
4. Backup and Resotre

#### Storage

File server, Cloud strage, Confluence などのファイル・情報文書置き場。  
運用手順を含めて、バージョン識別可能な保管庫として機能する。

1. File upload / download with versioning
2. Backup and Rewtore

#### Issue Tracking System

1. Create ticket with unique id
2. Status controll
3. Board
4. Gantt chart with Milestone
5. Layere stractured ticket model

- [ ] Usecase を総ざらいして、要件として整理する

## 各コンポーネントへの要件

８コンポーネントに対し、PMBOK 5 Process 個別に要件を割付ける

- Automotive Spice からの要件割付は、ここでは既に終わっていて欲しい気がする。
- コンポーネント実装者への要件を言いたい。抽象的ではなく、具体的に。

- [ ] 上記2点のために、ここで一旦要件分析へ戻ってユースケース記述を整理することにする。
- [ ] ユースケースは、上記のチケットをトリガにした Eng の活動にフォーカスする。

### アプリ層

### PM

PMは、リードSE自身であるか、またはリードSEの伴走者であることをここで宣言しておく。
そうでないと成立しないため。

#### Initiation

- PMがアサインされて、開始する。
- 内容を理解し、プロジェクトのラフデザインを行う。
  - 一応PM的なこととSE的なことを分離して記述したい。実際には同時に動かないと成立しないが。
  - SWEからの情報を取得するカタチになるか。
- In/Outはなにか

#### Planning

- SW要件からエピックをリストアップする
- 大日程にマッチするよう、エピックを配置する。
- タイミング毎に更新を行う。

#### Executing

- アサインし、リソースを用意し、実行する

#### Monitoring and Control

- 定期的にミーティングを実施する
- レポートを作成しステークホルダーに提供する


