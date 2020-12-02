# [@Ghost PM] Ghost default PM Process

[@doctype ghost 0.4]

## 1. Description

Ghost process を初めて利用するチーム向けの、シンプルなプロジェクトマネジメントプロセス。

<br>

## 2. PROCESS ROLES

- 追加ロール定義なし

<br>

## 3. WORK PRODUCTS

### 3.1. Project management Outline plan

| @id | Name | Description |
| --- | ---- | ----------- |
| OP          | Outline Plan | Project management Outline Plan。プロジェクト基本計画書に含まれるか、リンクされる。
| _@template_ | [プロジェクトマネジメント概要計画書テンプレート](templates/ProjectManagementOutlinePlan.md) |

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Initiate

#### _[@ T1]_ プロジェクト情報の収集

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | プロジェクト情報の収集 | 関係者から情報を収集し、記録する。

本プラグインは、プロジェクトマネジメント概要計画書のテンプレートを用意している。
このテンプレートに記載する概要計画を決定可能となるよう、必要な情報を収集する。

情報取得のため、サプライヤー内のシステム開発・ハードウェア開発などの他部署、客先関係部署、状況に応じてサプライヤー現地法人顧客窓口などとコミュニケーションをとる。

<br>

#### _[@ T2]_ プロジェクトマネジメント概要計画の策定

| @id | Name | Description |
| :-: | ---- | ----------- |
| T2  | プロジェクトマネジメント概要計画の策定 | _ProjectMasterPlan.PM.OP_（プロジェクトマネジメント概要計画）を作成する。

[テンプレート](templates/ProjectManagementOutlinePlan.md)を使用して、プロジェクトマネジメント概要計画書を作成する。

プロジェクトの初期段階では、情報が揃っておらず記載できない部分やプランを確定できない部分が残ることが多い。
プロジェクト計画書はプロジェクト期間を通じて維持・メンテナンスされるため、最初から厳密に記述しようとするよりも、いまの段階でわかっていることを記録するつもりで書くのがよい。

<br>

#### _[@ V1]_ プロジェクトマネジメント概要計画のレビュー

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクトマネジメント概要計画書のレビュー |

[チェックリスト](templates/ProjectManagementOutlinePlan_checklist.md)を使用して、プロジェクトマネジメント概要計画書をレビューする。

<br>

#### _[@D] DELIVERABLES_

##### _[@Q] QUALITY RECORDS_
