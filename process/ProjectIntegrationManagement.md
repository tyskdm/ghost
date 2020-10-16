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

- [ ] クラス図を追加する

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

| ![[@fig:puml PUML.PJIM::Main]](ProjectIntegrationManagement/Main.png) |
| :-: |
| fig.4.1 Main activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Initiation  | < Call this.Initiation ><br>プロジェクトを開始するために、プロジェクト情報を収集し、プロジェクトを定義し、プロジェクト開始の承認を得る。
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

### 4.2. [@activity] Initiation

#### _[@P] PURPOSE_

- プロジェクトを開始するために、プロジェクト情報を収集し、プロジェクトを定義し、プロジェクト開始の承認を得る。

#### _[@E] ENTRY CRITERIA / INPUT_

1. プロジェクト開始依頼 / 開始検討依頼
2. 初期段階のプロジェクト概要計画書（客先への見積提案書レベル）

#### _[@F] ACTIVITY FLOW_

| ![[@fig.puml PUML.PJIM::Initiate]](ProjectIntegrationManagement/Initiate.png) |
| :-: |
| fig 4.2.1 Initiate activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Create a blank _ProjectPlan_ | テンプレートを複製してプロジェクト計画書を作成する。初期段階のプロジェクト概要計画書(E2)の内容を転記する。
| T2  | PJM::Initiate() | < ProjectPlan = PJM::Initiate(ProjectPlan) ><br>プロジェクトマネジメント観点から情報収集し、プロジェクト憲章・マネジメント戦略の策定を行う。
| T3  | SWE::Initiate() | < ProjectPlan = SWE::Initiate(ProjectPlan) ><br>ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。
| T4  | SQA::Initiate() | < ProjectPlan = SQA::Initiate(ProjectPlan) ><br>ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。
|     | @note | T1, T2, T3 の各タスクは相互に強く影響を及ぼすため連携して進めること。
| T5  | Adjust _ProjectPlan_ to integrate | PJM, SWE, SQA それぞれの戦略・計画が整合するよう計画の調整を行い、プロジェクト計画書を更新する。
| B1  | | 計画が整合しない場合は、対応方針を示して再度 T1, T2, T3 を実施する。
| T6  | PJM::Estimate(ProjectPlan) | < ProjectEstimationRecord = PJM::Estimate(ProjectPlan) ><br>プロジェクトの見積を行う。
| B2  | PJM::GetApproval(ProjectPlan, ProjectEstimationRecord) | < Approval = PJM::GetApproval(ProjectPlan, ProjectEstimationRecord) ><br>プロジェクト計画に定める承認プロセスに従い、プロジェクト開始の承認を得る。
| T7  | WPM::Initiate() | < WPM::Estimate(ProjectPlan) ><br>Work product Management を開始する。
| T8  | ISM::Initiate() | < ISM::Estimate(ProjectPlan) ><br>Issue Management プロセスを開始する。
| T9  | WPM::CreateRepositor() | < WPM::CreateRepository() ><br>プロジェクト計画書などのプロジェクト関連文書用のリポジトリを生成する。プロダクト成果物と同一のリポジトリにしても分離してもよい（D3 参照）。
| T10 | Create initial baseline of Pfojetc plan and estimation | < WPM::MergeRequest(develop, master) ><br>Create initial baseline of Pfojetc plan and estimation. then, project started. <br>プロジェクト計画書をマスターブランチへ発行して初版とし、プロジェクトを正式スタートする。
|     | @note | @todo プロジェクトキックオフの実施に言及する。

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Plan | プロジェクト計画書。プロジェクト固有の計画・管理情報が記載される。初期見積りからプロジェクト終結まで、段階的に詳細化・修正され、維持される。
| D2  | Project Estimation Record | プロジェクト見積り記録。プロジェクト計画書とともに、プロジェクト終結まで修正・維持される。
| D3  | Project Repository | プロジェクトマネジメント関連文書のためのリポジトリ。プロダクト成果物と同一のリポジトリにしても分離してもよい（プロジェクト毎に決定し、プロジェクト計画書・WPMパートに記述する）。

#### _[@V] VERIFICATION_

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクト計画書 | プロジェクト計画書チェックシート（プロジェクト計画書テンプレートの一部として提供される）に従い、関連ステークホルダーによるレビューを実施する。

#### _[@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト計画の承認 | B2 にてプロジェクト計画が承認され、リソースの割当が開始されていること。
|     | @note X1.1 | 承認を得るべきステークホルダーは本アクティビティを通じて決定され、プロジェクト計画書に記載されている。
| X2  | プロジェクト計画書・初版 | T10 にて、プロジェクト計画書が関連するステークホルダーから承認されていること。収集されたプロジェクト情報、プロジェクト見積記録とともに、ベースライン化されていること。

---

### 4.3. [@activity] Planning

#### _[@P] PURPOSE_

- 各ステークホルダーからの要求を満たしうるよう、PJM・SWE・SQAの各観点から計画を調整し、整合させる。

#### _[@E] ENTRY CRITERIA / INPUT_

- プロジェクト計画書

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PJIM::Main]](ProjectIntegrationManagement/Planning.png) |
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
