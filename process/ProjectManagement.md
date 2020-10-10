# [@ PROC.PJM] Project Management Process

| MAN.3 | Project management |
| ----- | ------------------ |
| Purpose | プロジェクト管理プロセスの目的は、プロジェクトの要件および制約内で、プロジェクトが製品を生成するために必要な活動およびリソースを識別し、確立し、制御することである
| Outcomes | 1) プロジェクトの作業範囲が定義されている。<br>2) 利用可能なリソースおよび制約内でプロジェクト目標達成の実現可能性が評価されている。<br>3) 作業を完了するために必要な活動およびリソースが分類され、見積られている。<br>4) プロジェクト内の窓口、ならびに他のプロジェクトおよび組織部門との窓口が識別され、監視されている。<br>5) プロジェクトの実行計画が策定され、実装され、維持されている。<br>6) プロジェクトの進捗が監視され、報告されている。<br>7) プロジェクトの目標が達成されない場合、是正処置が講じられ、プロジェクトで識別された問題の再発が予防されている。

## Sub processes

- Initiating phase

MAN.3.BP1: 作業範囲の定義 [1]
MAN.3.BP2: プロジェクトのライフサイクルの定義 [2]
MAN.3.BP3: プロジェクトの実現可能性の評価 [2]

- Planning phase

MAN.3.BP4: プロジェクト活動の定義、監視、および調整 [3, 5, 7]
MAN.3.BP5: プロジェクトの見積りおよびリソースの定義、監視、および調整 [2, 3, 7]
MAN.3.BP6: 必要となるスキル、知識、および経験の確保 [3, 7]
MAN.3.BP7: プロジェクトの窓口および合意したコミットメントの識別、監視、および調整 [4, 7]
MAN.3.BP8: プロジェクトスケジュールの定義、監視、および調整 [3, 5, 7]

- Execution phase

MAN.3.BP6: 必要となるスキル、知識、および経験の確保 [3, 7]

- Monitoring and Controlling phase

MAN.3.BP4: プロジェクト活動の定義、監視、および調整 [3, 5, 7]
MAN.3.BP5: プロジェクトの見積りおよびリソースの定義、監視、および調整 [2, 3, 7]
MAN.3.BP7: プロジェクトの窓口および合意したコミットメントの識別、監視、および調整 [4, 7]
MAN.3.BP8: プロジェクトスケジュールの定義、監視、および調整 [3, 5, 7]
MAN.3.BP10: プロジェクト進捗のレビューおよび報告 [6, 7]

- Closing phase




## Project-specific information

プロジェクトマネジメントプロセスにて参照する以下の情報は、プロジェクト計画書（[ProjectPlan.md](../ProjectPlan.md) ）にて定義する。

| PMへのコメント |
| -------------- |
| 本パートを ProjectPlan.md にコピーし、内容を記載するとよい。

// Project management process の初期化すべきメンバ変数をここへ列記する。



### 3.2. Project Management Methodology

#### 3.2.1. Ticket driven development

- チケット駆動で開発を行う

- チケットはそれぞれ固有のIssueをもち、Activityの記録を残すエビデンスとして機能する

- チケットには３つのレイヤがある
  1. Epic
  2. Story
  3. Task

#### 3.2.2. Two Layered Scheduling

- Engineering sample に対して Epic を割付ける → Release plan → PM
- Itaration 毎に、実施する Story を決定する → Iteration plan → Team

#### 3.2.3. Release planning

- 外部チームとの定期ミーティングにて進捗共有し、調整する
- Engineering sample と Product release とがある
- 現在の最新のリリースプランは [こちら] ← 版歴管理可能ななにか。最初は md のテーブルでよいのでは。

#### 3.2.4. Iteration planning

- Plugin にて、PMBOK・ガントチャートスタイル、Scrumスタイルなどを実施。
- 定例ミーティングの開催、retrospective など。

### 3.3. Issue Management Process

- Issue type毎に必要な手順、記録を定めたもののセット。
- Ticket 発行時にタイプを指定することで、実施者は従うべきプロセスを参照できる。

#### 3.3.1. Resources

| Server | Address |
| ------ | ------- |
| Jira                     | http://192.168.200.300 |
| Issue management process | http://192.168.200.400 |

#### 3.3.2. Basic Issue types

| Issue type | Description |
| ---------- | ----------- |
| Requirement |
| Incident    |
| Defect      |
| Risk        |

#### 3.3.3. Additional Issue types

- plugin で追加する

| Issue type | Description |
| ---------- | ----------- |
| Joint review |
| Rlease       | Epic


