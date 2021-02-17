# [@ SWDD.MAN3] Project Management Process

[@doc P.WP.SWDD.MAN3 | @type ghost 0.4]

## 1. [@SML:req RA] Requirements analysis

### 1.1. Automotive SPICE MAN.3 Project management

#### 1.1.1. Purpose

| @reqt | Name | Description |
| ----- | ---- | ----------- |
| MAN.3 | Project Management | プロジェクト管理プロセスの目的は、プロジェクトの要件および制約内で、プロジェクトが製品を生成するために必要な活動およびリソースを識別し、確立し、制御することである
| | @trace | @copy ASPICE.3.1.MAN3.PURPOSE

#### 1.1.2. Outcome

| @reqt | Name   | Description |
| ----- | ------ | ----------- |
|         | @trace | @refine MAN.3
| OC1 | Outcome1 | プロジェクトの作業範囲が定義されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC1
| OC2 | Outcome2 | 利用可能なリソースおよび制約内でプロジェクト目標達成の実現可能性が評価されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC2
| OC3 | Outcome3 | 作業を完了するために必要な活動およびリソースが分類され、見積られている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC3
| OC4 | Outcome4 | プロジェクト内の窓口、ならびに他のプロジェクトおよび組織部門との窓口が識別され、監視されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC4
| OC5 | Outcome5 | プロジェクトの実行計画が策定され、実装され、維持されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC5
| OC6 | Outcome6 | プロジェクトの進捗が監視され、報告されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC6
| OC7 | Outcome7 | プロジェクトの目標が達成されない場合、是正処置が講じられ、プロジェクトで識別された問題の再発が予防されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC7

#### 1.1.3. Base Practice

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | 作業範囲の定義 | プロジェクトの目標、モチベーション、および境界を識別する。
|         | @trace       | @deriveReqt OC1
|         | @trace       | @copy ASPICE.3.1.MAN3.BP1
| _@spec_ | BP1.1        | 上位プロジェクトおよび顧客から情報を収集し、プロジェクト計画書に記述する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP1.2        | プロジェクト計画書に、プロジェクトのモチベーション、目標、境界を記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP2     | プロジェクトのライフサイクルの定義 | プロジェクトの範囲、背景、規模、および複雑性に適したプロジェクトのライフサイクルを定義する。
|         | @trace       | @deriveReqt OC2
|         | @note 1      | 一般的にこのプラクティスは、プロジェクトライフサイクルおよび顧客の開発プロセスが互いに一貫していることを意図する。
| _@spec_ | BP2.1        | プロジェクトライフサイクルに影響を与える上位プロジェクト情報・顧客情報を収集し、プロジェクトライフサイクルをプロジェクト計画書に記述する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP2.2        | プロジェクト計画書に、プロジェクトライフサイクルを記述する。
|         | @note        | プロジェクトライフサイクルには少なくとも、上位プロジェクト・顧客の開発プロセスにリンクされる主要マイルストーンが含まれること。主要マイルストーンには、エンジニアリングサンプルのリリースおよび最終リリースが含まれる。
|         | @rationale   | 対外インターフェースを伴うマイルストーンを定義することにより、プロジェクトライフサイクルへの外部要求を定義する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP3     | プロジェクトの実現可能性の評価 | プロジェクト目標達成の実現可能性を、時間、プロジェクトの見積り、および利用可能なリソースの制約内での技術的な実現可能性の観点から評価する。
|         | @trace       | @deriveReqt OC2
| _@spec_ | BP3.1        | プロジェクトに与えられる制約情報（時間・リソース、見積り）を収集し、技術的な実現可能性を評価する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP3.2        | プロジェクト計画書に、プロジェクトに与えられた制約情報と、技術的実現可能性評価結果を記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP4     | プロジェクト活動の定義、監視、および調整 | 定義したプロジェクトライフサイクルおよび見積りに従って、プロジェクト活動およびその依存性を定義し、監視し、調整する。必要に応じて、活動およびその依存性を調整する。
|         | @trace       | @deriveReqt OC3, OC5, OC7
|         | @note 2      | 活動および関連する作業パッケージを構造化し、管理可能な大きさにすることは、適切な進捗の監視に役立つ。
|         | @note 3      | 一般的にプロジェクト活動には、エンジニアリング、管理、および支援プロセスを含める。
| _@spec_ | BP4.1        | プロジェクト活動を通じて実現すべき、主要マイルストーンごとの実現レベルを定義し記述する。
|         | @note        | プロジェクトライフサイクルがウォーターフォール型の場合にはトールゲート基準として、アジャイル型の場合にはユーザーストーリー（通常はエピック）として定義されることを想定している。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP4.2        | プロジェクト活動を定義・構造化し、マイルストーンごとの実現レベルを満たすよう依存関係を定義し、記述する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP4.3        | プロジェクト活動の実施結果および状況変化を収集して今後のプロジェクト活動への影響を評価し、必要に応じてプロジェクト活動の定義調整 / 依存関係調整 / 実施時期調整を行う。
|         | @satisfiedBy | PD.IF.OP::StatusReview
| _@spec_ | BP4.4        | プロジェクト計画書に、プロジェクト活動の定義、プロジェクト活動相互および主要マイルストーンとの依存関係を記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP5     | プロジェクトの見積りおよびリソースの定義、監視、および調整 | プロジェクトの目標、リスク、モチベーション、および境界に基づいて、プロジェクトの工数およびリソースの見積りを定義し、監視し、調整する。
|         | @trace       | @deriveReqt OC2, OC3, OC7
|         | @note 4      | 適切な見積り手法を使用すべきである。
|         | @note 5      | 必要となるリソース例には、人、インフラ（ツール、テスト機器、情報伝達の仕組み等）、およびハードウェア／資料がある。
|         | @note 6      | プロジェクトのリスク（MAN.5使用）および品質基準（SUP.1使用）を考慮する。
|         | @note 7      | 一般的に見積りおよびリソースには、エンジニアリング、管理、および支援プロセスを含める。
| _@spec_ | BP5.1        | BP4.4 に定義したプロジェクト活動を実行するために必要となる、工数の見積を行う。
|         | @satisfiedBy | PD.IF.OP::Estimate
| _@spec_ | BP5.2        | BP4.4 に定義したプロジェクト活動を実行するために必要となる、インフラの見積を行う。
|         | @satisfiedBy | PD.IF.OP::Estimate
| _@spec_ | BP5.3        | BP4.4 に定義したプロジェクト活動を実行するために必要となる、ハードウェア/資料を定義する。
|         | @satisfiedBy | PD.IF.OP::Estimate
| _@spec_ | BP5.4        | BP4.4 および BP5.1-3 についてリスクを調査・評価し、BP5.1-3 の調整を行う。
|         | @satisfiedBy | PD.IF.OP::Estimate
| _@spec_ | BP5.5        | プロジェクトの見積を行い、プロジェクト計画書に記述する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP5.6        | プロジェクト活動の実施結果および状況変化を収集して今後のプロジェクト活動への影響を評価し、必要に応じてプロジェクト見積りの調整を行う。
|         | @satisfiedBy | PD.IF.OP::StatusReview
| _@spec_ | BP5.7        | プロジェクト計画書に、プロジェクトの工数およびリソースの見積りを記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP6     | 必要となるスキル、知識、および経験の確保 | プロジェクトの見積りに応じた必要となるスキル、知識、および経験を識別し、選出したメンバーおよびチームがそれらを保有していること、または間に合うようにそれらを取得することを確実にする。
|         | @trace       | @deriveReqt OC3, OC7
|         | @note 8      | 必要となるスキルおよび知識から逸脱がある場合、一般的にトレーニングが提供される。
| _@spec_ | BP6.1        | プロジェクトの見積りに応じた必要となるスキル、知識、および経験を識別する。
|         | @satisfiedBy | PD.IF.OP::Estimate
| _@spec_ | BP6.2        | プロジェクトメンバーおよびチームがそれら（BP6.1）を保有していることを確認し、不足している場合は必要な時期に間に合うようそれらを取得することをプランする。
|         | @satisfiedBy | PD.IF.OP::Plan
|
| BP7     | プロジェクトの窓口および合意したコミットメントの識別、監視、および調整 | 他の（サブ）プロジェクト、組織部門、および他の影響を受ける利害関係者とのプロジェクトの窓口を識別し、合意し、合意したコミットメントを監視する。
|         | @trace       | @deriveReqt OC4, OC7
|         | @note 9      | プロジェクトの窓口は、エンジニアリング、管理、および支援プロセスと関係を持つ。
| _@spec_ | BP7.1        | 顧客、他の（上位/サブ）プロジェクト、組織部門・上位マネジメントなど利害関係者を識別し、インターフェースを定義・合意し、記述する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP7.2        | 上記窓口毎の利害関係者と合意したインターフェースを記述し、その監視手順を定義し記述する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP7.3        | プロジェクト計画書に、識別された利害関係者およびそのインターフェースを記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
| _@spec_ | BP7.4        | 定義したインターフェースを IssueManegement（SWDD.ISM）にプロジェクト固有課題タイプとして登録する。
|         | @note        | SWDD.ISM は課題タイプごとに具体プロセス情報を保持し、実行時のプロセス遵守を支援する。
|         | @note        | JointReview 課題タイプをテンプレートして利用可能にしておく
|         | @satisfiedBy | SWDD.ISM
| _@spec_ | BP7.5        | プロジェクト計画書に識別された利害関係者およびそのインターフェースを監視する。
|         | @satisfiedBy | PD.IF.OP::StatusReview
|
| BP8     | プロジェクトスケジュールの定義、監視、および調整 | リソースを活動に割り当て、プロジェクト全体における各活動のスケジュールを立てる。スケジュールは、プロジェクトのライフサイクルの期間中、継続的に最新の状態を保たなければならない。
|         | @trace       | @deriveReqt OC3, OC5, OC7
|         | @note 10     | このプラクティスは、エンジニアリング、管理、および支援の全プロセスと関連する。
|         | @memo        | EXEC IF に、調達（要員のトレーニング・アサイン、委託先との契約締結などを含む）を追加するか？
|
| _@spec_ | BP8.1        | BP4.4 に定義したプロジェクト活動を、課題管理チケットとして起票する（GH.ISM::CreateTicket）
|         | @satisfiedBy | PD.IF.OP::Schedule
| _@spec_ | BP8.2        | 課題管理チケットに実施時期をリソースを割り当てる。
|         | @satisfiedBy | PD.IF.OP::Schedule
| _@spec_ | BP8.3        | スケジュールされたプロジェクト活動の進捗を監視し、必要に応じて調整を行う。
|         | @satisfiedBy | PD.IF.OP::StatusReview
| _@spec_ | BP8.4        | プランされたプロジェクト活動に対応した課題管理チケットが起票され、直近のチケットにリソースがアサインされる。
|         | @satisfiedBy | PD.WP::IssueManagementTicket
|
| BP9     | 一貫性の確保 | 影響を受ける関係者間で横断的に、プロジェクトの見積り、スキル、活動、スケジュール、計画、窓口、およびコミットメントが一貫していることを確実にする。
|         | @trace       | @deriveReqt OC3, OC4, OC5, OC7
| _@spec_ | BP9.1        | プロジェクト計画書を、関係者から閲覧可能な場所・形式で公開する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP9.2        | プロジェクトチームメンバーへ説明する。
|         | @satisfiedBy | PD.IF.OP::Plan
| _@spec_ | BP9.3        | 必要に応じて、チーム外部関係者に対して説明を行う。
|         | @satisfiedBy | PD.IF.OP::Plan
|
| BP10    | プロジェクト進捗のレビューおよび報告 | 見積った工数および期間に基づいてプロジェクトのステータスおよび活動の達成度合いを定期的にレビューし、影響を受けるすべての関係者へ報告する。識別した問題の再発を予防する。
|         | @trace       | @deriveReqt OC6, OC7
|         | @note 11     | プロジェクトにおけるレビュー活動は、管理層によって定期的に実行される。プロジェクト終了時におけるレビュー活動は、例えばベストプラクティスおよび教訓を識別することに役立つ。
| _@spec_ | BP10.1       | チーム内部の定期レビューを実施し、BP4, BP5, BP8 のモニタリングと調整を行う。
|         | @satisfiedBy | PD.IF.OP::StatusReview
| _@spec_ | BP10.2       | BP7 で定義した外部インターフェースを利用し、定期レビューを実施する。レビューは双方向に実施し、BP9 のモニタリングと調整を行う。
|         | @satisfiedBy | PD.IF.OP::StatusReport
| _@spec_ | BP10.3       |
|         | @rationale   |

## 2. [@SML:bdd PD] Process declaration

### 2.1. [@ IF] Interfaces

#### 2.1.1. Management interface

| @ifblk  | Name       | Description |
| ------- | ---------- | ----------- |
| MAN     | Management | Management interface group
| _@port_ | initiation : PD.IF::Initiation |
| _@port_ | planning : PD.IF::Planning     |
| _@port_ | execution : PD.IF::Execution   |
| _@port_ | monitoring : PD.IF::Monitoring |
| _@port_ | closing : PD.IF::Closing       |

#### 2.1.2. Main interfaces

| @ifblk  | Name       | Description |
| ------- | ---------- | ----------- |
| INIT    | Initiation | Project Initiation phase に上位プロジェクトから呼び出されるプロセス群。プロジェクトの初期プラン・初期見積・プロジェクトチャーター作成などを行う。
| _@port_ | initiate : PD.IF.OP::Initiate  |
|
| PLAN    | Planning   | Project Planning phase に上位プロジェクトもしくはプロジェクト内部から呼び出されるプロセス群。プロジェクトアクティビティの洗い出しと定義、依存関係・優先順位の設定、マイルストーンとの紐づけなどを行う。また必要リソース導出のための見積を実施する。
| _@port_ | plan : PD.IF.OP::Plan             |
| _@port_ | estimate : PD.IF.OP::Estimate     |
|
| EXEC    | Execution  |
| _@port_ | schedule : PD.IF.OP::Schedule     |
|
| MON     | Monitoring |
| _@port_ | monitor : PD.IF.OP::StatusReview       |
|
| CLOS    | Closing    |
| _@port_ | close : PD.IF.OP::Close           |

#### 2.1.3. [@ OP] Operations

##### 2.1.3.1. Initiation

1. Operation **Initiate**() : PD.WP::Project Plan

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 11-gh000    | Initiate | Project Initiation
| @parameter  | in initialProjectPlan : PD.WP::Project Plan | プロジェクトの開始情報
| @returnType | PD.WP::ProjectPlan |
| @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
|
| @satisfy    | RA.MAN3.BP1.1 | 上位プロジェクトおよび顧客から情報を収集し、プロジェクト計画書に記述する。
|             | RA.MAN3.BP2.1 | プロジェクトライフサイクルに影響を与える上位プロジェクト情報・顧客情報を収集し、プロジェクトライフサイクルをプロジェクト計画書に記述する。
|             | RA.MAN3.BP3.1 | プロジェクトに与えられる制約情報（時間・リソース、見積り）を収集し、技術的な実現可能性を評価する。
|
| @note       | TODO        | ユースケース図との対応付けをこの表に含めたくなるかもしれない。
|             | TODO        | トリガー情報はここに記述したい。誰からいつ呼ばれるか、周期起動か、など。

##### 2.1.3.2. Planning

1. Operation **Plan**() : PD.WP::Project Plan

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 21-gh000    | Plan | Project Planning
    | @parameter  |  |
    | @returnType | PD.WP::ProjectPlan |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |
    | @satisfy    | RA.MAN3.BP1.1 | 上位プロジェクトおよび顧客から情報を収集し、プロジェクト計画書に記述する。
    |             | RA.MAN3.BP4.1 | プロジェクト活動を通じて実現すべき、主要マイルストーンごとの実現レベルを定義し記述する。
    |             |               | @note プロジェクトライフサイクルがウォーターフォール型の場合にはトールゲート基準として、アジャイル型の場合にはユーザーストーリー（通常はエピック）として定義されることを想定している。
    |             | RA.MAN3.BP4.2 | プロジェクト活動を定義・構造化し、マイルストーンごとの実現レベルを満たすよう依存関係を定義し、記述する。
    |             | RA.MAN3.BP5.5 | プロジェクトの見積を行い、プロジェクト計画書に記述する。
    |             | RA.MAN3.BP6.2 | プロジェクトメンバーおよびチームがそれら（BP6.1）を保有していることを確認し、不足している場合は必要な時期に間に合うようそれらを取得することをプランする。
    |             | RA.MAN3.BP7.1 | 顧客、他の（上位/サブ）プロジェクト、組織部門・上位マネジメントなど利害関係者を識別し、インターフェースを定義・合意し、記述する。
    |             | RA.MAN3.BP7.2 | 上記窓口毎の利害関係者と合意したインターフェースを記述し、その監視手順を定義し記述する。
    |             | RA.MAN3.BP9.1 | プロジェクト計画書を、関係者から閲覧可能な場所・形式で公開する。
    |             | RA.MAN3.BP9.2 | プロジェクトチームメンバーへ説明する。
    |             | RA.MAN3.BP9.3 | 必要に応じて、チーム外部関係者に対して説明を行う。

2. Operation **Estimate**() : PD.WP::Project Plan

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 22-gh000    | Estimate |
    | @parameter  |  |
    | @returnType | PD.WP::ProjectPlan |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |
    | @satisfy    | RA.MAN3.BP5.1 | BP4.4 に定義したプロジェクト活動を実行するために必要となる、工数の見積を行う。
    |             | RA.MAN3.BP5.2 | BP4.4 に定義したプロジェクト活動を実行するために必要となる、インフラの見積を行う。
    |             | RA.MAN3.BP5.3 | BP4.4 に定義したプロジェクト活動を実行するために必要となる、ハードウェア/資料を定義する。
    |             | RA.MAN3.BP5.4 | BP4.4 および BP5.1-3 についてリスクを調査・評価し、BP5.1-3 の調整を行う。
    |             | RA.MAN3.BP6.1 | プロジェクトの見積りに応じた必要となるスキル、知識、および経験を識別する。

##### 2.1.3.3. Execution

1. Operation **Schedule**() : PD.WP::IssueManagementTicket

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 31-gh000    | Schedule |
    | @parameter  |  |
    | @returnType | PD.WP::ProjectPlan |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |             | issueManagementTicket : PD.WP::IssueManagementTicket
    |
    | @satisfy    | RA.MAN3.BP8.1 | BP4.4 に定義したプロジェクト活動を、課題管理チケットとして起票する（GH.ISM::CreateTicket）
    |             | RA.MAN3.BP8.2 | 課題管理チケットに実施時期をリソースを割り当てる。
    |
    | @note       | BP8.4         | プランされたプロジェクト活動に対応した課題管理チケットが起票され、直近のチケットにリソースがアサインされる。
    |             | @satisfiedBy | PD.WP::IssueManagementTicket

##### 2.1.3.4. Monitoring

1. Operation **StatusReview**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 41-gh000    | StatusReview |
    | @parameter  |  |
    | @returnType | PD.WP::ProjectPlan |
    |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |             | issueManagementTicket : PD.WP::IssueManagementTicket |
    |
    | @satisfy    | RA.MAN3.BP4.3 | プロジェクト活動の実施結果および状況変化を収集して今後のプロジェクト活動への影響を評価し、必要に応じてプロジェクト活動の定義調整 / 依存関係調整 / 実施時期調整を行う。
    |             | RA.MAN3.BP5.6 | プロジェクト活動の実施結果および状況変化を収集して今後のプロジェクト活動への影響を評価し、必要に応じてプロジェクト見積りの調整を行う。
    |             | RA.MAN3.BP7.5 | プロジェクト計画書に識別された利害関係者およびそのインターフェースを監視する。
    |             | RA.MAN3.BP8.3 | スケジュールされたプロジェクト活動の進捗を監視し、必要に応じて調整を行う。
    |             | RA.MAN3.BP10.1 | チーム内部の定期レビューを実施し、BP4, BP5, BP8 のモニタリングと調整を行う。

2. Operation **StatusReport**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 42-gh000    | StatusReport |
    | @parameter  |  |
    | @returnType | PD.WP::ProjectPlan |
    |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |             | issueManagementTicket : PD.WP::IssueManagementTicket
    |
    | @satisfy    | RA.MAN3.BP10.2 | BP7 で定義した外部インターフェースを利用し、定期レビューを実施する。レビューは双方向に実施し、BP9 のモニタリングと調整を行う。

##### 2.1.3.5. Closing phase

1. Operation **Close**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 51-gh000    | Close |
    | @parameter  |  |
    | @returnType |  |
    |
    | @satisfy    |  |

### 2.2. [@ WP] Work Product

| @block | Name | Description |
| ------ | ---- | ----------- |
| PP     | ProjectPlan | Project Plan
|
| @satisfy | RA.MAN3.BP1.2 | プロジェクト計画書に、プロジェクトのモチベーション、目標、境界を記述する。
|          | RA.MAN3.BP2.2 | プロジェクト計画書に、プロジェクトライフサイクルを記述する。
|          |               | @note プロジェクトライフサイクルには少なくとも、上位プロジェクト・顧客の開発プロセスにリンクされる主要マイルストーンが含まれること。主要マイルストーンには、エンジニアリングサンプルのリリースおよび最終リリースが含まれる。
|          |               | @rationale 対外インターフェースを伴うマイルストーンを定義することにより、プロジェクトライフサイクルへの外部要求を定義する。
|          | RA.MAN3.BP3.2 | プロジェクト計画書に、プロジェクトに与えられた制約情報と、技術的実現可能性評価結果を記述する。
|          | RA.MAN3.BP4.4 | プロジェクト計画書に、プロジェクト活動の定義、プロジェクト活動相互および主要マイルストーンとの依存関係を記述する。
|          | RA.MAN3.BP5.7 | プロジェクト計画書に、プロジェクトの工数およびリソースの見積りを記述する。
|          | RA.MAN3.BP7.3 | プロジェクト計画書に、識別された利害関係者およびそのインターフェースを記述する。
