# [@Ghost PJIM] Project Integration Management Process

[@gdoc 0.6, @type ghost 0.3]

## 1. Description

本プロセスは、プロジェクトの統合マネジメントを行う。プロジェクトライフサイクル全体をあらわす Main 関数と、Main 関数から呼び出される以下のアクティビティを含んでいる。

| @alias | Refers to | Note |
| ------ | --------- | ----------- |
| Main       | [A::Main](#41-activity-main) | PJIM::Main()<br>プロジェクト統合マネジメントプロセスのメイン関数。
| Initiation | [A::Initiation](#42-activity-initiation) | PJIM::Initiation()

プロジェクトインスタンス固有の情報は、プロジェクト計画書に記載する。  
プロジェクト計画書はプロジェクト内グローバルな成果物であり、全てのプロセス・アクティビティから参照可能である。

| @alias | Refers to | Note |
| ------ | --------- | ----------- |
| ProjectPlan | [W::ProjectPlan](#31-workproduct-project-plan) | PJIM::ProjectPlan<br>プロジェクト計画書。プロジェクトインスタンス固有の情報が記載され、各プロセス・各アクティビティから参照される。

本プロセスの全てのアクティビティは、プロジェクトマネージャーによって実施される。

| @alias | Refers to | Note |
| ------ | --------- | ----------- |
| ProjectManager | [R::ProjectManager](#21-role-project-manager) | PJIM::ProjectManager<br>プロジェクトマネージャー。プロジェクト責任者であり、スクラムではプロダクトオーナーに相当する。

## 2. [@ R] ROLES

### 2.1. [@role] Project Manager

| @id | Name | Description |
| --- | ---- | ----------- |
| R1      | ProjectManager |
| @ailias | ProductOwner |
|
| @skill  |

## 3. [@ W] WORK PRODUCTS

### 3.1. [@workproduct] Project Plan

| @id | Name | Description |
| --- | ---- | ----------- |
| PP            | ProjectPlan | プロジェクト計画書。Ghostプロセスを使用したプロジェクトの、ルート文書となる。以下のコンテンツを含む。
| _@content_    | PJM.W.PP | @part のほうがよいか？ 構造体メンバーのようにしたいのだが。
| _@content_    | SWE.W.PP |
| _@content_    | SQA.W.PP |
| _@content_    | WPM.W.PP |
| _@content_    | ISM.W.PP |
| | |
| _@template_   | [PJIM.W.T.PP](../template/projectPlan_t.md) | 宣言した作業成果物のテンプレートと検証基準書（たいていはチェックリスト）を同時に提供したい。
| _@verifiedBy_ | [PJIM.W.V.PP](../template/projectPlan_v.md) | 同上

## 4. [@ A] ACTIVITIES

### 4.1. [@activity] Main

| @id | Name | Description |
| :-: | ---- | ----------- |
| 1        | Main           |  |
| @alias   | PIJM::Main     | PIJM まで名前空間を遡っていることを示す記法が必要
| @realize | SWDD.xxxx.xxxx |

- この定義は、1. Description にまとめたほうがよいか？

#### _[@P] PURPOSE_

- プロジェクトライフサイクル全体について、定義し、プランし、実施・調整し、完了させる。

#### _[@E] ENTRY CRITERIA / INPUT_

- 上位組織からのプロジェクト開始依頼
- 初期段階のプロジェクト概要計画書（見積提案書レベル）
  - ゴール概要、スコープ概要、納期及び計画概要を含む。
  - PJIM::ProjectPlan projectPlan

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PJIM::Main]](../puml/process/ProjectIntegrationManagement/Main.png) |
| :-: |
| fig.4.1 Main activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Initiation  | < Call this.Initiation ><br> プロジェクトの骨格（ゴール、スコープ、スケジュール、コストを含む）を定義し、エンジニアリング方針（アーキテクチャ、主要技術、評価手法など）および品質保証戦略を定義する。これに基づきプロジェクト初期見積りと実現可能性検証を行う。見積られたプロジェクトに適した成果物管理プロセス、課題管理プロセスを選定し、初期化する。
|     | @note       | 推奨： T1 と T2 の間でキックオフを実施するとよい。
| T2  | Planning    | < Call this.Planning ><br> プロジェクトのプランニングを行う。プロジェクトマネジメントプラン、エンジニアリングプランを具体化し、これにあわせて品質保証プランを策定する。
| T3  | Execution   | < Call this.Execution ><br> プロジェクトマネジメントの実行プロセスを通じて、プロジェクトの各プランを実行に移す。
|     | @note       | Iteration Plannning
| T4  | Monitoring  | < Call this.Monitoring ><br> プロジェクトプランに基づき、プロジェクト活動を監視する。プロジェクトの活動が終結するまで繰り返す。
|     | @note       | Iteration Retrospective
| B1  |             | プランされたアクティビティ全てを終了した場合は、終了処理（T6. Closing）へ移る。
| B2  |             | プロジェクトプランからの逸脱が観測された場合には、課題制御・プラン調整を行う（T5. Controlling）。逸脱がなければ、次のプランを実行する（T3. Execution）。
| T5  | Controlling | < Call this.Controlling ><br> プロジェクトの進捗、プロジェクトをとりまく状況変化に応じてプロジェクトプランを調整、制御する。
| A1  | onExit      | プロジェクト強制終了時のエントリーポイント
| T6  | Closing     | < Call this.Closing ><br> プロジェクトを終結する。

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Plan | プロジェクト計画書。プロセスに定められた共通部分以外のプロジェクト固有情報が記載される。初期見積りからプロジェクト終結まで、段階的に詳細化・修正され、維持される。

#### _[@V] VERIFICATION_

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクトプランのレビュー | T1（Initiation）の最後に、プロジェクト計画を上位組織のマネジメントによりレビューする。この結果をもって、プロジェクトの開始可否判断が行われる。

#### _[@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト活動の完了 | 全てのプロジェクト活動が終了している。
| X2  | プロジェクト完了報告書 | プロジェクト完了報告書が作成され、承認されている。

---

### 4.2. [@activity] Initiation

#### _[@P] PURPOSE_

- プロジェクトライフサイクル全体を定義するために、情報収集しプロジェクト初期計画および初期見積りを行う。

#### _[@E] ENTRY CRITERIA / INPUT_

- 上位組織からのプロジェクト開始依頼
- 初期段階のプロジェクト概要計画書（見積提案書レベル）
  - ゴール概要、スコープ概要、納期及び計画概要を含む。

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PJIM::Main]](../puml/process/ProjectIntegrationManagement/Initiate.png) |
| :-: |
| fig 4.2 Initiate activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Initiate PJM | < Call PJM::Initiation ><br> プロジェクトマネジメント観点から情報収集し、プロジェクト定義・マネジメント戦略の策定を行う。
| T2  | Initiate SWE | < Call SWE::Initiation ><br> ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。
| T3  | Initiate SQA | < Call SQA::Initiation ><br> ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。
|     | @note | T1, T2, T3 の各タスクは相互に強く影響を及ぼすため連携して進めること。
| T4  | Adjust to integrate | PJM, SWE, SQA それぞれが整合するよう計画の調整を行い、プロジェクト計画書を作成する
| B1  | | 計画が整合しない場合は、対応方針を示して再度 T1, T2, T3 を実施する。
| T5  | Estimate the project | < Call PJM::Estimate ><br> プロジェクトの見積を行う。
| T6  | Initiate WPM | < Call WPM::Estimate ><br> Work product Management を開始する。
| T7  | Initiate ISM | < Call ISM::Estimate ><br> Issue Management プロセスを開始する。
| T8  | Create initial baseline of Pfojetc plan and estimation | < Call WPM::MergeRequest(develop, master) ><br> Create initial baseline of Pfojetc plan and estimation. then, project started. プロジェクト計画書をマスターブランチへ発行して初版とし、プロジェクトを正式スタートする。

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Plan | プロジェクト計画書。プロセスに定められた共通部分以外のプロジェクト固有情報が記載される。初期見積りからプロジェクト終結まで、段階的に詳細化・修正され、維持される。
| D2  | Project Estimation Record | プロジェクト見積り記録。プロジェクト計画書とともに、プロジェクト終結まで修正・維持される。

#### _[@V] VERIFICATION_

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクトプランのレビュー | T1（Initiation）の最後に、プロジェクト計画を上位組織のマネジメントによりレビューする。この結果をもって、プロジェクトの開始可否判断が行われる。

#### _[@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト活動の完了 | 全てのプロジェクト活動が終了している。
| X2  | プロジェクト完了報告書 | プロジェクト完了報告書が作成され、承認されている。

acceptance review




---

### 4.3. [@activity] Planning

#### _[@P] PURPOSE_

- 各ステークホルダーからの要求を満たしうるよう、PJM・SWE・SQAの各観点から計画を調整し、整合させる。

#### _[@E] ENTRY CRITERIA / INPUT_

- プロジェクト計画書

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PJIM::Main]](../puml/process/ProjectIntegrationManagement/Planning.png) |
| :-: |
| fig 4.3 Planning activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Initiate PJM | < Call PJM::Initiation ><br> プロジェクトマネジメント観点から情報収集し、プロジェクト定義・マネジメント戦略の策定を行う。
| T2  | Initiate SWE | < Call SWE::Initiation ><br> ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。
| T3  | Initiate SQA | < Call SQA::Initiation ><br> ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Plan | プロジェクト計画書。プロセスに定められた共通部分以外のプロジェクト固有情報が記載される。初期見積りからプロジェクト終結まで、段階的に詳細化・修正され、維持される。
| D2  | Project Estimation Record | プロジェクト見積り記録。プロジェクト計画書とともに、プロジェクト終結まで修正・維持される。

#### _[@V] VERIFICATION_

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクトプランのレビュー | T1（Initiation）の最後に、プロジェクト計画を上位組織のマネジメントによりレビューする。この結果をもって、プロジェクトの開始可否判断が行われる。

#### _[@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト活動の完了 | 全てのプロジェクト活動が終了している。
| X2  | プロジェクト完了報告書 | プロジェクト完了報告書が作成され、承認されている。


```cpp

ProjectReport main(ProjectPlan projectPlan) {

    /*
     *    T1. Initiation
     */
    projectPlan = PJM::initiate(projectPlan);   // Project management
    projectPlan = SWE::initiate(projectPlan);   // Software Engineering
    projectPlan = SQA::initiate(projectPlan);   // Software Quality Authentication

    projectPlan = Estimate(projectPlan);

    if (waitStart(projectPlan)) {
        exit();
    }

    WPM::initiate(projectPlan);                 // Work product management
    ISM::initiate(projectPlan);                 // Issue management

    ProjectReport escalatedReport = NULL;

    do {

        /*
         *    T5. Adjusting or Controlling
         */
        projectPlan = controll(escalatedReport, projectPlan);

        /*
         *    T2. Planning
         */
        projectPlan = PJM::plan(projectPlan);
        projectPlan = SWE::plan(projectPlan);
        projectPlan = SQA::plan(projectPlan);

        /*
         *    T3. Execution
         *    - execute through Project management
         */
        PJM::exec(projectPlan);

        /*
         *    T4. Monitoring
         *    - waiting or poling(regularly) status repot
         */
        escalatedReport = monitor(projectPlan);

    } while (escalatedReport);

    /*
     *    T6. Closing
     */
    escalatedReport = SWE::close(NULL, projectPlan);
    escalatedReport = PJM::close(escalatedReport, projectPlan);
    escalatedReport = SQA::close(escalatedReport, projectPlan);

    ISM::close();
    WPM::close();

    return escalatedReport;
}

```
