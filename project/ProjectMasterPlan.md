# [@ PJIM.W.PP] Ghost project plan

[@doc ghost 0.4, @docid PJIM.W.PP, @template ghost/PIJM.W.T.PP]

## Introduction

1. 本書は [Ghost process](https://github.com/tyskdm/Ghost) に従って運営されるプロジェクトの、プロジェクト計画書です。
2. プロジェクトインスタンス固有の情報が記載されています。
3. 新規メンバーがプロジェクトを概観できるよう意図しています。

## Table of Contents

| # | Chapter | Description |
| - | ------- | ----------- |
| 0 | [Quick reference](#0-quick-reference) |
| 1 | [Project Charter](#1--pc-project-charter) | @satisfy ASPICE.MAN3
| 2 | [Project Management Plan](#2--pm-project-management-plan) | @satisfy ASPICE.MAN3
| 3 | [Software Engineering Plan](#3--swe-software-engineering-plan) |
| 4 | [Quality Assurance Plan](#4--sqa-quality-assurance-plan) |
| 5 | [Issue Management Plan](#5--ism-issue-management-plan) |
| 6 | [Workproduct Management Plan](#6--wpm-work-product-management-plan) |
| 7 | [Links and Terminology](#7-links-and-terminology) |

## 0. Quick reference

### 0.1. Release schedule

| Date | Name | Description |
| ---- | ---- | ----------- |
| 08/30 | ES#1 |
| 09/30 | ES#2 |
| 09/30 | ER   |
| 10/05 | PR   |
| 10/05 | PP   |
| 10/05 | MP   |

### 0.2. Team menbers

| Role | Name | email |
| ---- | ---- | ----- |
| PM       |  |
| Engineer |  |
| Engineer |  |

### 0.3. Stakeholders

| Name | email | Description |
| ---- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

### 0.4. Resources

| Name | Description |
| ---- | ----------- |
| [Jira]() |
| [Issue management process]() |

## 1. [@ PC] Project Charter

| @section | PC | Project Charter |
| -------- | -- | --------------- |
| @satisfy | RA.MAN3.BP1.2 | プロジェクト計画書に、プロジェクトのモチベーション、目標、境界を記述する。
|          | RA.MAN3.BP3.2 | プロジェクト計画書に、プロジェクトに与えられた制約情報と、技術的実現可能性評価結果を記述する。

### 1.1. Motivation

### 1.2. Goals

### 1.3. Scope

Define the scope of work. Identify the project's goals, motivation and boundaries.

### 1.4. Assumptions and Constraints

### 1.5. Milestone schedule

### 1.6. Resources and Costs

### 1.7. Risks

## 2. [@ PM] Project Management Plan

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

### 2.1. Project lifecycle

#### 2.1.1. Lifecycle Model

- Ghost process が想定するライフサイクルは決まっているので、その資料を参照する。
- 資料を引用して概要をここに示す（図と補足説明程度）
  - 開発新規性などによって、複数パターンがある？（WF・アジャイルの２パターンくらい用意しておく？）

#### 2.1.2. Milestones

- Lifecycle に登場する主要マイルストーンスケジュールを記載する
- ESリリース毎の用途・実装レベルの定義

### 2.2. Project Activities

- 概要のみをここに記述し、詳細は ITS にて管理する

#### 2.2.1. Work packages

- Engineering plan による開発方向性に基づく情報。

1. Feature list
   - Feature list レベルの粒度の機能リスト（とその実現レベル）

2. Development environment
   - 開発用実行環境、検証環境、テストケース作成など

3. Support process
   - ドキュメンテーション
   - 機能安全対応文書作成、など

#### 2.2.2. Deependencies

- 上記 WP と各 ES との依存関係概要

### 2.3. Resources

#### 2.3.1. Estimate of resources

- Project phase（マイルストーン期間）毎の必要リソースの見積り
- 見積手法・根拠は別途記録されるべき（Closingの際の振返りに使えるように）

| Project phase | Human resources | Tools | Infrastructure |
| ------------- | --------------- | ----- | -------------- |

#### 2.3.2. Human resources

##### Project team

| Role | Name | Email | Status |
| ---- | ---- | ----- | ------ |
| PM       |  |
| Engineer |  |
| Engineer |  |

##### Contractor

- 外部委託メンバーを採用する場合などは記載する

#### 2.3.3. Tools

#### 2.3.4. Infrastructure

### 2.4. Project interface

#### 2.4.1. Stakeholders

| Dept | Contact person | Email | Description |
| ---- | -------------- | ----- | ----------- |
|  |  |
|  |  |
|  |  |

#### 2.4.2. Communication plan

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

## 3. [@ SWE] Software Engineering Plan

## 4. [@ SQA] Quality Assurance Plan

### 4.1. Solution

品質保証に対する基本的な考え方、実現戦略をここで簡潔に示す。  
新たにチームに参画したメンバーが概要を理解できるようにすることを目的とする。

> 品質保証プロセスの目的は、作業成果物およびプロセスがあらかじめ定義された規定および計画を遵守しており、不適合事項が解決され、さらに予防されていることを、独立的かつ客観的に保証することである。

詳細は、[process/QualityAssurance.md] を参照のこと。

### 4.2. [@ WPQ] Workproduct Quality

#### 4.2.1. Verification

#### 4.2.2. Configuration management

##### Repository

##### Branching strategy

#### 4.2.3. Review and Approval

### 4.3. [@ PQ] Process Quality

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
