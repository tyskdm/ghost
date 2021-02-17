# [@Ghost SWE] Software Engineering Process

[@doctype ghost 0.4]

## 1. Description

本プロセスは、ソフトウェアエンジニアリング活動を規定する。

本プロセスは、上位のシステムエンジニアリングプロセスからの設計情報に基づき、ソフトウェアアーキテクチャ設計からソフトウェア妥当性確認試験までをカバーする。

本プロセスの全てのアクティビティは、ソフトウェアエンジニアによって実施される。

| @id | Name | Description |
| :-: | ---- | ----------- |
| A1  | Initiate | ソフトウェアエンジニアリング観点から情報収集し、ソフトウェアエンジニアリング概要計画の策定を行う。
|     | @note    | プロダクトの特徴情報を収集し、エンジニアリング上の課題を把握する。（テーマ３）<br>上記に基づき、開発方針を定める。<br>必要な活動とリソースの洗い出し（概算レベル）を行う。
| A2  | Plan
| A3  | EstimateProject | プロジェクトの見積を行う。

<br>

## 2. PROCESS ROLES

### 2.1. [@role] Project Management Officer

| @id | Name | Description |
| --- | ---- | ----------- |
| PMO     | ProjectManagementOfficer |
| @ailias | @scrum Scrum master |

<br>

## 3. WORK PRODUCTS

### 3.1. [@workproduct] Project management Outline plan

| @id | Name | Description |
| --- | ---- | ----------- |
| OP  | Outline Plan | Project management Outline Plan。プロジェクト基本計画書に含まれるか、リンクされる。

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Initiate

#### [@P] PURPOSE

- プロジェクトの特徴的条件を収集し、ソフトウェアエンジニアリング概要計画の策定を行う。

#### [@E] ENTRY CRITERIA / INPUT

1. プロジェクト基本計画書（初期段階のプロジェクト概要計画レベル）

#### [@F] ACTIVITY FLOW

| ![[@fig:puml PUML.PM::Initiate]](SoftwareEngineering/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T1  | プロジェクトの条件と課題の把握 | プロジェクトの特徴的条件を収集し、エンジニアリング上の課題を把握する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T1();
| T2  | ソフトウェアエンジニアリング戦略の策定 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T2();
| T3  | ワークパッケージの定義 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T3();
| T4  | 概要スケジュールの作成 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T4();
| T5  | 必要リソースの抽出 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T5();
| T6  | ソフトウェアエンジニアリングプロセスの選定とテーラーリング |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T6();

#### _[@V] VERIFICATION_

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | ソフトウェアエンジニアリング概要計画書のレビュー |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).V1();

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Management Outline plan | ソフトウェアエンジニアリング概要計画書

##### _[@Q] QUALITY RECORDS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| Q1  | Project Conditions | プロジェクト条件

#### [@X] EXIT CRITERIA / OUTPUT

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | ソフトウェアエンジニアリング概要計画書 | チェックリストに示す基準を満たしたソフトウェアエンジニアリング概要計画書。後工程にて、プロジェクトの見積り・プロジェクトの実現性検討・プロジェクト開始判断を行えるレベルであること。
