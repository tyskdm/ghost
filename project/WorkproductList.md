# Work product List

- [1. About this repository](#1-about-this-repository)
  - [1.1. Responsibilities](#11-responsibilities)
  - [1.2. Access rights](#12-access-rights)
  - [1.3. Branching model and Workflow](#13-branching-model-and-workflow)
  - [1.4. Branch definitions](#14-branch-definitions)
- [2. Work products](#2-work-products)
  - [2.1. Process documents](#21-process-documents)
  - [2.2. Process plugins](#22-process-plugins)
  - [2.3. Domain documents](#23-domain-documents)
  - [2.4. Project master plan](#24-project-master-plan)

<br>

## 1. About this repository

### 1.1. Responsibilities

- 本プロジェクトのプロダクト成果物およびプロジェクト成果物の構成制御を行う。

1. プロダクト成果物
   - 事前検討・分析などのための資料を除く、設計文書・プロセス文書。
     - 最終プロダクトであるプロセス文書を起点にWhat-Howのトレーサビリティ関連にある上流文書全てを含む。
     - トレーサビリティ関連のうちWhyに相当する分析レポート、検証記録に相当するテスト結果・レビュー記録などは本リポジトリに含めず、別途関連を示して記録する。（`6.4. 記録管理`参照）

2. プロジェクト成果物
   - プロジェクトの計画・制御に関する文書で、チーム内外を問わず複数メンバーが参照するもの

### 1.2. Access rights

| Rights | Person | Memo |
| ------ | ------ | ---------------- |
| Administrator | tyskdm       | Menber Controll, Backup and restore
| User          | Team menber  | ブランチごとのアクセス権は`6.2.2.7. Branch definitions`に示す。
| Viewer        | Stakeholders |

### 1.3. Branching model and Workflow

#### 1.3.1. Branching model

本リポジトリは、ブランチモデルとして[Gitfow](https://www.google.co.jp/search?q=gitflow+workflow)を採用する。

#### 1.3.2. Branching workflow

Gitflowの基本ワークフローに加え、Ghostプロセスの[Work product management process](https://github.com/tyskdm/ghost)に従う。

### 1.4. Branch definitions

| Branch | Owner | Rules or Acceptance criteria | Memo |
| ------ | ----- | ------------------- | ---- |
| master    | tyskdm | MasterBranchAcceptanceCriteria.md | 公開用ブランチ。pumlダイアグラムのpng出力を含み、github上で閲覧可能にしたもの。
| develop   | tyskdm | DevelopBranchAcceptanceCriteria.md | 開発ベースラインブランチ
| feature/* | Software Engineers | FeatureBranchCommitRules.md | コミット時のルール、コミットメッセージルール
| release/* | Software Engineers | ReleaseBranchOperatingRules.md | Rleaseブランチ運用ルール。権限、プロセス。
| hotfix/*  | Software Engineers | HotfixBranchOperatingRules.md | Hotfixブランチ運用ルール。権限、プロセス。

<br>

## 2. Work products

### 2.1. Process documents

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |
|    | Ghost process documents | /process/*.md |
|    | Ghost process diagram source in documents | /process/*.puml |

#### 2.1.1. Naming conventions

### 2.2. Process plugins

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |
|    | Ghost process plugins | /plugins/*.md |

### 2.3. Domain documents

#### 2.3.1. Domain architecture

##### 2.3.1.1. Arcitectual design

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |
|    | Ghost process domain architectual design documents | /domain/architecture/docs/*.md |

- [ ] TODO: `/domain/architecture/docs/` 配下にWorkproductList.mdをつくって詳細をそちらへ移す。

#### 2.3.2. Domain model

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |
|    | Ghost process domain model documents | /domain/model/*.md |

#### 2.3.3. Domain library

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |

### 2.4. Project master plan

| ID | Name | File reference | Type | Criteria | Verification |
| -- | ---- | -------------- | ---- | -------- | ------------ |
