# [@Ghost PM] Project Management Process

[@doctype ghost 0.4]

## 1. Description

> プロジェクト管理プロセスの目的は、プロジェクトの要件および制約内で、プロジェクトが製品を生成するために必要な活動およびリソースを識別し、確立し、制御することである  
> *[Automotive SPICE 3.1 - MAN.3 Project Management]*

プロジェクトマネジメントにより、ソフトウェアエンジニアリング概要計画、ソフトウェア品質保証概要計画を現実化する。

具体的には、ワークパッケージを課題に分割して時間軸上に配置し、人的資源・その他資源を調達・割当てて実行に移す。
またチーム内外メンバー間のコミュニケーションを維持して情報を共有し、問題・リスクを検出する。
問題・リスクへの対策をプランし、計画を制御し、実行に移す。

プロジェクトマネジメントプロセスは上記を実現するために：

1. チーム編成とチームマネジメント（チーム内PDCAサイクルの運用）方法を設計する。
2. コミュニケーションインターフェースを設定して、外界マネジメントを設計する。
3. プロジェクト課題を、優先度・タイミング・割当可能リソース・外部要因を考慮して順序付けし、リソースの割当を実施する。

| @id | Name | Description |
| :-: | ---- | ----------- |
| A1  | Initiate | プロジェクトマネジメント観点から情報収集し、プロジェクトマネジメント概要計画の策定を行う。
| A2  | Plan
| A3  | Estimate | プロジェクトの見積を行う。

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
| OP       | Outline Plan | Project management Outline Plan。プロジェクト基本計画書に含まれるか、リンクされる。

#### @note

1. Project outline
   - 顧客要求としてのプロジェクト外部要件を整理する
   - 主要マイルストーン： 要件とスケジュール
   - ステークホルダー、コミュニケーション窓口
   - ジョイントレビュー、エンジニアリングサンプルリリース（合同検証）、プロダクトリリース
2. Management outline plan
   - Management cycle
   - 変更依頼管理・問題解決管理・リスク管理 → ISMプロセスを採用する。
   - 文書化・構成管理 → WPMプロセスを採用する。

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Initiate

#### [@P] PURPOSE

- プロジェクトマネジメント観点から情報収集し、プロジェクトマネジメント概要計画の策定を行う。

#### [@E] ENTRY CRITERIA / INPUT

1. プロジェクト基本計画書（初期段階のプロジェクト概要計画レベル）
2. プロジェクト条件（SWE::Initiate）
3. ソフトウェアエンジニアリング概要計画書（SWE::Initiate）
4. ソフトウェア品質保証概要計画書（SQA::Initiate）

#### [@F] ACTIVITY FLOW

| ![[@fig:puml PUML.PM::Initiate]](ProjectManagement/Initiate.png) |
| :-: |
| fig.4.1 'Initiate' activity flow

#### _[@T] TASKS_

1. 組織化とチームマネジメント
2. 課題管理
3. 成果物管理
4. 外部インターフェース

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| T1  | プロジェクトの条件と課題の把握 | プロジェクトの特徴的条件から、プロジェクトマネジメント上の課題とリスクを把握する。
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T1();
| T2  | プロジェクトマネジメント戦略の策定 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T2();
| T3  | ワークパッケージの定義 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T3();
| T4  | 概要スケジュールの作成 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T4();
| T5  | 必要リソースの抽出 |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T5();
| T6  | プロジェクトマネジメントプロセスの選定とテーラーリング |
|     | @plugin | [PST.SWE::Initiate](../plugins/SelectTable.md#activity-sweinitiate).T6();

#### _[@V] VERIFICATION_

| @id | Name | Description | Role |
| :-: | ---- | ----------- | :--: |
| V1  | プロジェクトマネジメント概要計画書のレビュー |
|     | @plugin | [PST.PM::Initiate](../plugins/SelectTable.md#21-activity-initiate).V1();

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Management Outline plan | プロジェクトマネジメント概要計画書

##### _[@Q] QUALITY RECORDS_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |

#### [@X] EXIT CRITERIA / OUTPUT

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクトマネジメント概要計画書 | チェックリストに示す基準を満たしたプロジェクトマネジメント概要計画書。後工程にて、プロジェクトの見積り・プロジェクトの実現性検討・プロジェクト開始判断を行えるレベルであること。
