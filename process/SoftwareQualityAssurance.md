# [@Ghost SQA] Software Quality Assurance Process

[@doctype ghost 0.4]

## 1. Description

### 1.1. Purpose

> 品質保証プロセスの目的は、作業成果物およびプロセスがあらかじめ定義された規定および計画を遵守しており、不適合事項が解決され、さらに予防されていることを、独立的かつ客観的に保証することである。  
> *[Automotive SPICE 3.1 - SUP.1 Quality Assurance]*

上記は、ソフトウェア開発プロジェクトにおける組織全体の責任範囲である（ソフトウェアエンジニアリングチームが負うことのできる範囲を超える）。
本プロセスは、プロジェクト単位のソフトウェア品質保証活動のうちソフトウェアエンジニアリングチーム内の活動を定義することを目的とする。

### 1.2. Scope

#### 1.2.1. SWEチームの責任範囲

開発されたソフトウェアプロダクトが要求された品質を満たすよう開発工程を計画・実行し、その妥当性を**説明する**ことはソフトウェアエンジニアリングチームの責任である。
その計画が組織知（組織標準規定・過去プロジェクトからの教訓など）に照らして充分であること、計画通り実行されていることを確認し、説明が妥当であることを**第三者的に検証する**ことが、品質保証チームの責任である。

#### 1.2.2. SQAプロセスの責任範囲

ソフトウェアエンジニアリングプロセスでは、製品を開発し品質を保証するためになにを**行うか**が計画され実施される。
ソフトウェア品質保証プロセスは、そのエンジニアリング活動の結果としてソフトウェアプロダクトが要求された品質を満たすことを**説明可能**且つ**検証可能**にすることを目的とする。

- 補足： スコープ定義としての目的は上記のとおりだが、説明・検証可能であるように活動をレビュー・監視することで製品の品質を実際に実現することが本質的な目的である。書類を揃えることは目的ではない。

### 1.3. Activity

ソフトウェア品質保証プロセスでは以下の活動を実施する。

1. 【計画】ソフトウェアエンジニアリング活動が製品品質にどのように関係するか示し、どのように効果測定・モニタリングするかを計画する。
2. 【実施】モニタリングを実施し、結果を記録する。プロジェクト終了時には報告書を作成する。

本プロセスの全てのアクティビティは、ソフトウェア品質エンジニアによって実施される。

<br>

## 2. PROCESS ROLES

### 2.1. [@role] Project Management Officer

| @id | Name | Description |
| --- | ---- | ----------- |
| SQE | SoftwareQualityEngineer |

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

- ソフトウェア品質保証の観点から情報収集し、ソフトウェア品質保証概要計画の策定を行う。
- ソフトウェア品質保証概要計画

#### [@E] ENTRY CRITERIA / INPUT

1. プロジェクト基本計画書（初期段階のプロジェクト概要計画レベル）
2. プロジェクト条件（SWE::Initiate）
3. ソフトウェアエンジニアリング概要計画書（SWE::Initiate）

#### [@F] ACTIVITY FLOW

| ![[@fig:puml PUML.PM::Initiate]](SoftwareQualityAssurance/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T1  | プロジェクトの条件と課題の把握 | プロジェクトの特徴的条件から、品質保証上の課題とリスクを把握する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T1();
| T2  | 品質保証戦略と活動計画の策定 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T2();
| T3  | 品質メトリクス定義とモニタリング方法概要の策定 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T4();
| T4  | 段階的目標値の概要設定 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T5();
| T5  | ワークパッケージの定義 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T6();
| T6  | 概要スケジュールの作成 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T7();
| T7  | 必要リソースの抽出 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T8();
| T8  | ソフトウェア品質保証プロセスの選定とテーラーリング |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).T9();

#### _[@V] VERIFICATION_

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | ソフトウェア品質保証概要計画書のレビュー |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sqainitiate).V1();

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Software Quality Assurance Outline plan | ソフトウェア品質保証概要計画書

##### _[@Q] QUALITY RECORDS_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### [@X] EXIT CRITERIA / OUTPUT

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | ソフトウェア品質保証概要計画書 | チェックリストに示す基準を満たしたソフトウェア品質保証概要計画書。後工程にて、プロジェクトの見積り・プロジェクトの実現性検討・プロジェクト開始判断を行えるレベルであること。
