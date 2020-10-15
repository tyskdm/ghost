# [@Ghost PJIM] Project Integration Management Process

[@gdoc 0.6, @type ghost 0.3]

## 1. Description

## 2. [@ R] ROLES

## 3. [@ W] WORK PRODUCTS

## 4. [@ A] ACTIVITIES

### 4.1. [@activity] Initiate

#### _[@P] PURPOSE_

- プロジェクトマネジメント観点から情報収集し、プロジェクト憲章・マネジメント戦略の策定を行う。

#### _[@E] ENTRY CRITERIA / INPUT_

- プロジェクトマネジメント開始 / 検討開始依頼
- プロジェクト計画書（初期段階のプロジェクト概要計画レベル）

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PJM::Initiate]](ProjectManagement/Initiate.png) |
| :-: |
| fig.4.1.1 Initiate activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | プロジェクト情報の収集 | 関係者から情報を収集し、記録する。
| T2  | プロジェクト憲章の策定 |
| T3  | プロジェクトマネジメント戦略の策定 |

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Charter | プロジェクト憲章
| D2  | Project Management Strategy | プロジェクトマネジメント戦略

#### _[@V] VERIFICATION_

| @id | Name | Description |
| :-: | ---- | ----------- |
| V1  | プロジェクト計画書（プロジェクトマネジメントパート） |

#### _[@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクトマネジメント計画の充分性 | プロジェクトの見積り、プロジェクトの実現性検討、プロジェクト開始判断を行えるレベルであること。

### 4.2. [@activity] Initiation

#### _[@P] PURPOSE_

- プロジェクトライフサイクル全体を定義するために情報収集し、プロジェクト初期計画および初期見積りを行い、プロジェクト計画書を作成する。

#### _[@E] ENTRY CRITERIA / INPUT_

1. プロジェクト開始依頼
2. 初期段階のプロジェクト概要計画書（客先への見積提案書レベル）

#### _[@F] ACTIVITY FLOW_

| ![[@fig.puml PUML.PJIM::Initiate]](ProjectIntegrationManagement/Initiate.png) |
| :-: |
| fig 4.2.1 Initiate activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Create a blank _ProjectPlan_ | テンプレートを複製してプロジェクト計画書を作成する。初期段階のプロジェクト概要計画書(E2)の内容を転記する。
| T2  | PJM::Initiate() | < ProjectPlan = PJM::Initiate(ProjectPlan) ><br>プロジェクトマネジメント観点から情報収集し、プロジェクト定義・マネジメント戦略の策定を行う。
| T3  | SWE::Initiate() | < ProjectPlan = SWE::Initiate(ProjectPlan) ><br>ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。
| T4  | SQA::Initiate() | < ProjectPlan = SQA::Initiate(ProjectPlan) ><br>ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。
|     | @note | T1, T2, T3 の各タスクは相互に強く影響を及ぼすため連携して進めること。
| T5  | Adjust _ProjectPlan_ to integrate | PJM, SWE, SQA それぞれが整合するよう計画の調整を行い、プロジェクト計画書を更新する。
| B1  | | 計画が整合しない場合は、対応方針を示して再度 T1, T2, T3 を実施する。
| T6  | PJM::Estimate(ProjectPlan) | < ProjectEstimationRecord = PJM::Estimate(ProjectPlan) ><br>プロジェクトの見積を行う。
| T7  | WPM::Initiate() | < WPM::Estimate(ProjectPlan) ><br>Work product Management を開始する。
| T8  | ISM::Initiate() | < ISM::Estimate(ProjectPlan) ><br>Issue Management プロセスを開始する。
| T9  | WPM::CreateRepositor() | < WPM::CreateRepository() ><br>プロジェクト計画書などのプロジェクト関連文書用のリポジトリを生成する。プロダクト成果物と同一のリポジトリにしても分離してもよい（D3 参照）。
| T10  | Create initial baseline of Pfojetc plan and estimation | < WPM::MergeRequest(develop, master) ><br>Create initial baseline of Pfojetc plan and estimation. then, project started. <br>プロジェクト計画書をマスターブランチへ発行して初版とし、プロジェクトを正式スタートする。

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
| X1  | プロジェクト計画書の承認 | プロジェクトが定義され、T10 にて関連ステークホルダーから承認を得ていること（計画内容、リソースの割当て、プロジェクト活動の開始について承認を得る）。
|     | @note X1.1 | 承認を得るべきステークホルダーは本アクティビティを通じて決定され、プロダクト計画書に記載されている。
| X2  | プロジェクト計画書・初版 | プロジェクト計画書の、ステークホルダーから承認を得た初版。収集されたプロジェクト情報、プロジェクト見積記録とともに、ベースライン化されていること。

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
