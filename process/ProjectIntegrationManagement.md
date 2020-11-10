# [@Ghost PIM] Project Integration Management Process

[@doctype ghost 0.4]

## 1. Description

本プロセスは、プロジェクトの統合マネジメントを行う。プロジェクトライフサイクル全体について定義し、マネジメント・エンジニアリング・品質保証それぞれをプランし、実施・調整し、完了させる、プロジェクト遂行の最上位プロセスとなる。

本プロセスは、プロジェクトライフサイクル全体をあらわすMainアクティビティと、Mainアクティビティから呼び出されるサブアクティビティを含んでいる。

本プロセスの各アクティビティを通じて、プロジェクトインスタンス固有の情報を保持するプロジェクト基本計画書を作成、維持する。プロジェクト基本計画書はプロジェクト内グローバルな成果物であり、全てのプロセス・アクティビティから参照可能である。プロジェクト終結時には、プロジェクト完了報告書が作成される。

本プロセスの全てのアクティビティは、プロジェクトマネージャーによって実施される。

<br>

## 2. PROCESS ROLES

### 2.1. [@role] Project Manager

| @id | Name | Description |
| --- | ---- | ----------- |
| PM      | ProjectManager | プロジェクトを遂行し、成果を作り出すことに責任をもつ。
| @ailias | @scrum ProductOwner | Scrumではプロダクトオーナーに相当する。

<br>

## 3. WORK PRODUCTS

### 3.1. [@workproduct] Project Master Plan

| @id | Name | Description |
| --- | ---- | ----------- |
| PMP           | ProjectMasterPlan | プロジェクト基本計画書。プロジェクトインスタンスのルート文書となる。以下の各計画関連書類をまとめたもので、プロジェクト内各所からアクセスされるグローバル構造体のようなもの。
| _@part_       | PIM.PC | Project charter
| _@part_       | PIM.RA | Responsibility assignment
| _@part_       | PM.OP  | Project management Outline Plan
| _@part_       | SWE.OP | Software engineering Outline Plan
| _@part_       | SQA.OP | Software quality assurance Outline Plan
| _@part_       | WPM.OP | Work product management Outline Plan
| _@part_       | ISM.OP | Issue management Outline Plan
| | |
| _@template_   | [PIM.PMP.T](./template/ProjectMasterPlan_t.md) | 作業成果物のテンプレート
| _@verifiedBy_ | [PIM.PMP.V](./template/ProjectMasterPlan_v.md) | 作業成果物の検証基準書（たいていはチェックリスト）

### 3.2. [@workproduct] Project Closure Report

| @id | Name | Description |
| --- | ---- | ----------- |
| PCR           | ProjectClosureReport | プロジェクト終了報告書。<br>"[プロジェクト終了報告書は、プロジェクトの成功を評価し、プロジェクトの成果物のカタログを作成し、プロジェクトを正式に終了する最終文書です。プロジェクト終了報告書の主な目的は、プロジェクトの成功と失敗の全体像を提供することです。プロジェクト終了報告書には、利害関係者、監査人、将来のプロジェクトマネージャーが、プロジェクト期間中に何が達成され、どのように作業が完了したかを明確に理解できるように、すべての重要なプロジェクト情報が含まれていなければなりません。](https://www.washington.edu/asa/project-management-draft/project-management-resources/templates/closure-project-closure-report/)"
| | |
| _@template_   | [PIM.PCR.T](./template/ProjectMasterPlan_t.md) | 作業成果物のテンプレート
| _@verifiedBy_ | [PIM.PCR.V](./template/ProjectMasterPlan_v.md) | 作業成果物の検証基準書（たいていはチェックリスト）

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Main

#### [@P] PURPOSE

- プロジェクトライフサイクル全体について、定義し、プランし、実施・調整し、完了させる。

#### [@E] ENTRY CRITERIA / INPUT

1. 初期段階のプロジェクト概要計画情報（見積提案書レベル）。ゴール、スコープ、制約・コスト、納期及び中間スケジュールの概要情報を含む。

#### [@F] ACTIVITY FLOW

| ![@fig.puml.activity ProjectIntegrationManagement.puml/Main](ProjectIntegrationManagement/Main.png) |
| :-: |
| fig.4.1 'Main' activity flow

##### _[@T] TASKS_

| @id | Name | Role | Description |
| :-: | ---- | :--: | ----------- |
| T1  | Initiate()  | PM | < ProjectMasterPlan = this.Initiate() ><br>プロジェクト情報を収集し、プロジェクトを定義し、承認を得てプロジェクトを開始する。
| T2  | Plan()      | PM | < ProjectMasterPlan = this.Plan(ProjectMasterPlan) ><br> プロジェクトのプランニングを行う。プロジェクトマネジメントプラン、エンジニアリングプランを具体化し、これにあわせて品質保証プランを策定する。
| T3  | Execute()   | PM | < this.Execute(ProjectMasterPlan) ><br> プロジェクトマネジメントの実行プロセスを通じて、プロジェクトの各プランを実行に移す。
|     | @note       |    | Iteration Plannning
| T4  | Monitor()   | PM | < this.Monitor(ProjectMasterPlan) ><br> プロジェクトプランに基づき、プロジェクト活動を監視する。プロジェクトステータスレポートを発行する。
|     | @note       |    | Iteration Retrospective
| T5  | Control()   | PM | < this.Control(ProjectMasterPlan) ><br> プロジェクトの進捗・問題、プロジェクトをとりまく状況変化に応じてプロジェクトプランを調整、制御する。
| T6  | onExit      |    | プロジェクト強制終了時のエントリーポイント
| T7  | Close()     | PM | < ProjectClosureReport = this.Close(ProjectMasterPlan) ><br> プロジェクトを終結する。

##### _[@V] VERIFICATION_

| @id | Name | Role | Description |
| :-: | ---- | :--: | ----------- |
| V1  |             | PM | プロジェクトゴールへの到達度合いを検証する。<br>到達した場合は、終了処理（T6. Close）へ移る。
| V2  |             | PM | プロジェクトプランからの逸脱を検証する。<br>逸脱が観測された場合には、課題制御・プラン調整を行う（T5. Control）。逸脱がなければ、次のプランを実行する（T3. Execute）。

##### _[@D] DELIVERABLES_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |
| D1  | Project Master Plan : PMP    | PM | プロジェクト基本計画書・初期版。<br>プロジェクト開始時に収集された情報に基づいてプロジェクトが定義され、概要計画が行われ、初期見積もりのベースとなるバージョン。
| D2  | Project Master Plan : PMP    | PM | プロジェクト基本計画書・更新版。<br>初期版に更新を重ねたバージョン。詳細計画が行われ、状況に応じて修正されたもの。
| D3  | Project Closure Report : PCR | PM | プロジェクト完了報告書。プロジェクトの結果をまとめ、次のプロジェクトへの情報を提供する。

##### _[@Q] QUALITY RECORDS_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |
| Q1  | Project Estimation Record | PM | プロジェクト見積記録・初期版。<br>プロジェクト基本計画書・初期版に基づくプロジェクト見積りの記録。
| Q2  | Project Estimation Record | PM | プロジェクト見積記録・更新版。<br>プロジェクト基本計画・更新版に基づくプロジェクト見積りの記録。
| Q3  | Project Status Report     | PM | プロジェクトステータスレポート。<br>運用計画により、週次・月次、社内向け・顧客向けなど複数種類があり得る。

#### [@X] EXIT CRITERIA / OUTPUT

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト活動完了の承認 | プロジェクト活動の完了がプロジェクトステータスレポートにより報告され、承認されている。
| X2  | プロジェクト完了報告書の承認 | プロジェクト完了報告書が作成され、承認されている。

<br>

### 4.2. [@activity] Initiate

#### [@P] PURPOSE

- プロジェクト情報を収集し、プロジェクトを定義し、承認を得てプロジェクトを開始する。

#### [@E] ENTRY CRITERIA / INPUT

1. 初期段階のプロジェクト概要計画情報（見積提案書レベル）。ゴール、スコープ、制約・コスト、納期及び中間スケジュールの概要情報を含む。

#### [@F] ACTIVITY FLOW

| ![[@fig.puml.activity ProjectIntegrationManagement.puml/Initiate]](ProjectIntegrationManagement/Initiate.png) |
| :-: |
| fig 4.2 'Initiate' activity flow

##### _[@T] TASKS_

| @id | Name | Role | Description |
| :-: | ---- | :--: | ----------- |
| T1  | Create new _ProjectMasterPlan_ | PM | テンプレートを複製してプロジェクト基本計画書を作成し、初期段階のプロジェクト概要計画情報(E1)の内容を転記する。プロジェクト基本計画書の以下のパートを策定する。<br>1. PIM.PC : Project charter<br>2. PIM.RA : Responsibility assignment
| T2  | PM::Initiate() | PM | < ProjectMasterPlan = PM::Initiate(ProjectMasterPlan) ><br>プロジェクトマネジメント観点から情報収集し、プロジェクトマネジメント概要計画の策定を行う。<br>3. PM.OP  : Project management Outline Plan
| T3  | SWE::Initiate() | PM | < ProjectMasterPlan = SWE::Initiate(ProjectMasterPlan) ><br>ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。<br>4. SWE.OP : Software engineering Outline Plan
| T4  | SQA::Initiate() | PM | < ProjectMasterPlan = SQA::Initiate(ProjectMasterPlan) ><br>ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。<br>5. SQA.OP : Software quality assurance Outline Plan
|     | @note | | T2, T3, T4 の各タスクは相互に強く影響を及ぼすため連携して進めること。
| T5  | Integrate _ProjectMasterPlan_ | PM | PJM, SWE, SQA それぞれの戦略・計画が整合するよう計画の調整を行い、プロジェクト基本計画として統合し、計画書を更新する。
| T6  | PM::Estimate(ProjectMasterPlan) | PM | < ProjectEstimationRecord = PM::Estimate(ProjectMasterPlan) ><br>プロジェクトの初期見積を行う。
| T7  | WPM::Initiate() | PM | < WPM::Initiate(ProjectMasterPlan) ><br>Work product Management を開始する。
| T8  | ISM::Initiate() | PM | < ISM::Initiate(ProjectMasterPlan) ><br>Issue Management プロセスを開始する。
| T9  | WPM::CreateRepositor() | PM | < WPM::CreateRepository() ><br>プロジェクト基本計画書などのプロジェクト関連文書用リポジトリを生成する。プロダクト成果物と同一のリポジトリにしてもよい（D2 参照）。
| T10 | Create initial baseline of Project master plan and Estimation record. | PM | < WPM::MergeRequest(develop, master) ><br>Create an initial baseline of the Project master plan and Estimation record. Then, the project started.<br>プロジェクト基本計画書をマスターブランチへ発行して初版とし、プロジェクトを正式スタートする。
|     | @note | | @todo プロジェクトキックオフの実施を追加する。

##### _[@V] VERIFICATION_

| @id | Name | Role | Description |
| :-:  | ---- | :--: | ----------- |
| V1  | Evaluate feasibility of the _ProjectMasterPlan_. | PM | プロジェクト基本計画の妥当性・実現可能性を検証する。妥当でない場合は、対応方針を示して再度 T1, T2, T3 を実施する。<br>< WPM::Verify(ProjectMasterPlan) >
| V2  | PM::GetApproval(ProjectMasterPlan, ProjectEstimationRecord) | PM | < Approval = PM::GetApprova(ProjectMasterPlan, ProjectEstimationRecord) ><br>プロジェクト基本計画に定める責任分担に従ってプロジェクト基本計画およびプロジェクト見積を検証し、プロジェクト開始の承認を得る。

##### _[@D] DELIVERABLES_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |
| D1  | Project Master Plan : PMP | PM | プロジェクト基本計画書・新規作成版。<br>テンプレートから複製され、初期段階のプロジェクト概要計画情報が記載されたもの。プロジェクト憲章と責任分担が記載され、プロジェクト基本計画策定を開始するためのバージョン。
| D2  | Project Repository | PM | プロジェクトマネジメント関連成果物のためのリポジトリ。プロダクト成果物と同一のリポジトリにしても分離してもよい（プロジェクト毎に、プロジェクト基本計画書・WPMパートにて決定する）。
| D3  | Project Master Plan : PMP | PM | プロジェクト基本計画書・初期版。<br>プロジェクト開始時に収集された情報に基づいてプロジェクトが定義され、概要計画が行われ、初期見積もりのベースとなるバージョン。

##### _[@Q] QUALITY RECORDS_

| @id | Name | Owner | Description |
| :-: | ---- | :---: | ----------- |
| Q1  | Project Estimation Record | PM | プロジェクト基本計画書・初期版に基づくプロジェクト見積り記録。プロジェクト基本計画書とともに、プロジェクト終結まで修正・維持される。

#### [@X] EXIT CRITERIA / OUTPUT_

| @id | Name | Description |
| :-: | ---- | ----------- |
| X1  | プロジェクト基本計画および見積の承認 | プロジェクト基本計画がその見積りを含めて検証・承認されていること。これに伴い、リソースの割当が開始されていること。
| X2  | プロジェクトリポジトリの運用開始 | プロジェクトリポジトリが準備され、プロジェクト基本計画書が収集されたプロジェクト情報、プロジェクト見積記録とともに、ベースライン化されていること。

<br>

### 4.3. [@activity] Plan

#### _[@P] PURPOSE_

- 各ステークホルダーからの要求を満たしうるよう、PJM・SWE・SQAの各観点から計画を調整し、整合させる。

#### _[@E] ENTRY CRITERIA / INPUT_

- プロジェクト基本計画書

#### _[@F] ACTIVITY FLOW_

| ![[@fig:puml PUML.PIM::Main]](ProjectIntegrationManagement/Planning.png) |
| :-: |
| fig 4.3 Planning activity flow

#### _[@T] TASKS_

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Initiate PJM | < Call PM::Initiation ><br> プロジェクトマネジメント観点から情報収集し、プロジェクト定義・マネジメント戦略の策定を行う。
| T2  | Initiate SWE | < Call SWE::Initiation ><br> ソフトウェア開発観点から情報収集し、開発方針・技術戦略の策定を行う。
| T3  | Initiate SQA | < Call SQA::Initiation ><br> ソフトウェア品質保証観点から情報収集し、品質保証戦略の策定を行う。

#### _[@D] DELIVERABLES_

| @id | Name | Description |
| :-: | ---- | ----------- |
| D1  | Project Master Plan | プロジェクト基本計画書。プロセスに定められた共通部分以外のプロジェクト固有情報が記載される。初期見積りからプロジェクト終結まで、段階的に詳細化・修正され、維持される。
| D2  | Project Estimation Record | プロジェクト見積り記録。プロジェクト基本計画書とともに、プロジェクト終結まで修正・維持される。

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

ProjectReport main(ProjectMasterPlan projectPlan) {

    /*
     *    T1. Initiation
     */
    projectPlan = PM::initiate(projectPlan);   // Project management
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
        projectPlan = PM::plan(projectPlan);
        projectPlan = SWE::plan(projectPlan);
        projectPlan = SQA::plan(projectPlan);

        /*
         *    T3. Execution
         *    - execute through Project management
         */
        PM::exec(projectPlan);

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
    escalatedReport = PM::close(escalatedReport, projectPlan);
    escalatedReport = SQA::close(escalatedReport, projectPlan);

    ISM::close();
    WPM::close();

    return escalatedReport;
}

```
