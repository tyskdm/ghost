# [@ SWDD.SUP10] Change Request Management Process

[@doc P.WP.SWDD.SUP10 | @type ghost 0.4]

## 1. [@SML:req RA] Requirements analysis

### 1.1. Automotive SPICE SUP.10 Change Request Management

#### 1.1.1. Purpose

| @reqt | Name   | Description |
| ----- | ------ | ----------- |
| SUP.10 | Change Request Management | 変更依頼管理プロセスの目的は、変更依頼が管理され、追跡され、実装されることを確実にすることである。
|       | @trace | @copy ASPICE.3.1.SUP10.PURPOSE

#### 1.1.2. Outcome

| @reqt | Name     | Description |
| ----- | -------- | ----------- |
|       | @trace   | @refine SUP.10
| OC1   | Outcome1 | 変更依頼管理戦略が策定されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC1
| OC2   | Outcome2 | 変更に対する依頼が記録され、識別されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC2
| OC3   | Outcome3 | 他の変更依頼との依存性および関係性が識別されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC3
| OC4   | Outcome4 | 変更依頼の実装内容を確認するための基準が定義されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC4
| OC5   | Outcome5 | 変更に対する依頼が分析され、リソース要件が見積られている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC5
| OC6   | Outcome6 | 変更が、分析結果および利用可能なリソースに基づいて優先順位を付けられ、承認されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC6
| OC7   | Outcome7 | 承認された変更が実装され、終結まで追跡されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC7
| OC8   | Outcome8 | すべての変更依頼のステータスが把握されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC8
| OC9   | Outcome9 | 双方向トレーサビリティが、変更依頼と影響を受ける作業成果物との間で確立されている。
|       | @trace   | @copy ASPICE.3.1.SUP10.OC9

#### 1.1.3. Base Practice

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | 変更依頼管理戦略の策定 | 変更依頼活動、変更依頼のステータスモデル、分析基準、およびこれらの活動を実施するための責任を含む変更依頼管理戦略を策定する。影響を受ける関係者との窓口を定義し、維持する。
|         | @trace       | @deriveReqt OC1
|         | @note 1      | 変更依頼のステータスモデルには、オープン、調査中、実装承認済、割当済、実装済、是正済、クローズ等がある。
|         | @note 2      | 一般的な分析基準には、リソース要件、スケジュール観点、リスク、利点等がある。
|         | @note 3      | 変更依頼活動は、変更依頼が系統的に識別、記述、記録、分析、実装、および管理されることを確実にする。
|         | @note 4      | 変更依頼管理戦略は、製品ライフサイクルの中で異なる手続きを適用する場合がある（例：プロトタイプ構築、量産開発）。
| _@spec_ | BP1.1        | 変更依頼活動、変更依頼のステータスモデル、分析基準、およびこれらの活動を実施するための責任を含む変更依頼管理戦略を策定する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP1.2        | 影響を受ける関係者との窓口を定義し、維持する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP1.3        | 影響を受ける関係者との窓口定義を記載する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP2     | 変更依頼の識別および記録 | 戦略に従って各変更依頼を一意に識別し、変更依頼者および理由を含めて記述し、記録する。
|         | @trace       | @deriveReqt OC2, OC3
| _@spec_ | BP2.1        | 各変更依頼を一意に識別し、変更依頼者および理由を含めて記述し、記録する。
|         | @satisfiedBy | PD.IF.OP::IdentifyRequest
| _@spec_ | BP2.1        | 変更依頼内容、変更依頼者および理由を含めて記述・記録可能にする。
|         | @satisfiedBy | PD.WP.IM::ChangeRequest
|
| BP3     | 変更依頼のステータスの記録 | ステータスモデルに従って、各変更依頼の追跡が容易となるようにステータスを割り当てる。
|         | @trace       | @deriveReqt OC8
| _@spec_ | BP3.1        | ステータスモデルに従って、各変更依頼の追跡が容易となるようにステータスを割り当てる。
|         | @satisfiedBy | PD.IF.OP::IdentifyRequest
| _@spec_ | BP3.2        | ステータスを記載可能（できれば必須）にする。
|         | @satisfiedBy | PD.WP.IM::ChangeRequest
|
| BP4     | 変更依頼の分析および評価 | 戦略に従って変更依頼を、影響を受ける作業成果物および他の変更依頼との依存性を含めて分析する。変更依頼の影響を評価し、実装内容を確認するための基準を確立する。
|         | @trace       | @deriveReqt OC3, OC4, OC5, OC9
| _@spec_ | BP4.1        | 戦略に従って変更依頼を、影響を受ける作業成果物および他の変更依頼との依存性を含めて分析する。
|         | @satisfiedBy | PD.IF.OP::AnalizeRequest
| _@spec_ | BP4.2        | 変更依頼の影響を評価し、実装内容を確認するための基準を確立する。
|         | **@todo**    | **なにをもってクライテリアが確定していることとするか。チケットへは固有の記述を行えばよいと思うが、相互の依存関係を確認しうるためにはある程度要件/仕様を明記しないとならないのではないか。少なくとも考え方は示す。**
|         | @satisfiedBy | PD.IF.OP::EstablishCriteria
|
| BP5     | 実装前に変更依頼の承認 | 戦略に従って変更依頼の実装前に、分析結果およびリソースの利用可能性に基づいて優先順位を付け、承認する。
|         | @trace       | @deriveReqt OC6
|         | @note 5      | 変更制御委員会（CCB）は、変更依頼を承認するために使用される共通の仕組みである。
|         | @note 6      | 変更依頼の優先順位付けは、リリースへ割り当てることによって実施してもよい。
| _@spec_ | BP5.1        | 分析結果およびリソースの利用可能性に基づいて優先順位を付け（リリースへ割り当て）、承認する。
|         | @satisfiedBy | PD.IF.OP::GetApproved
|
| BP6     | 変更依頼の実装内容のレビュー | 変更依頼の実装内容に対して終結前にレビューし、実装確認基準を満足し、全関連プロセスが適用されていることを確実にする。
|         | @trace       | @deriveReqt OC7, OC8
| _@spec_ | BP6.1        | 変更依頼の実装内容に対して終結前にレビューし、実装確認基準を満足し、全関連プロセスが適用されていることを確認する。
|         | **@todo**    | **この要件割付方法を再検討する。OPに分解しても実装と整合しなくなりそう。IssueType Classをモデリング（状態遷移＋アクティビティ＋終了基準、などをセットにしたもの）したほうがよさげ。**
|         | @satisfiedBy | PD.IF.OP::ReviewImplementation
|
| BP7     | 終結まで変更依頼の追跡 | 変更依頼を終結まで追跡する。フィードバックを変更依頼者へ提供する。
|         | @trace       | @deriveReqt OC7, OC8
| _@spec_ | BP7.1        | 変更依頼を終結まで追跡し、フィードバックを変更依頼者へ提供するよう手順が定められている。
|         | @satisfiedBy | PD.WP.IM::ChangeRequest
|
| BP8     | 双方向トレーサビリティの確立 | 変更依頼と、変更依頼によって影響を受ける作業成果物との間の双方向トレーサビリティを確立する。変更依頼が問題を原因として開始される場合、変更依頼と該当する問題報告書との間の双方向トレーサビリティを確立する。
|         | @trace       | @deriveReqt OC9
|         | @note 7      | 双方向トレーサビリティは、一貫性、完全性、および影響分析を支援する。
| _@spec_ | BP8.1        | 変更依頼と、変更依頼によって影響を受ける作業成果物との間の双方向トレーサビリティを確立する。
|         | @rationale   | 上記要件は Ghost documentation の IDシステムによって実現するため、ここでは割当を行わない。
| _@spec_ | BP8.2        | 変更依頼が問題を原因として開始される場合、該当する問題チケットへのリンク記載が要求される。
|         | @satisfiedBy | PD.WP.IM::ChangeRequest

#### 1.2 Automotive SPICE Annex-B Work product characteristics

> _**Blank section**_

## 2. [@SML:bdd PD] Process declaration

### 2.1. [@ IF] Interfaces

#### 2.1.1. Problem Resolution Management interface

| @ifblk  | Name       | Description |
| ------- | ---------- | ----------- |
| RISK    | RiskManagement | Risk management interface group
| _@port_ | initiation : PD.IF::Initiation |
| _@port_ | planning : PD.IF::Planning     |
| _@port_ | execution : PD.IF::Execution   |
| _@port_ | monitoring : PD.IF::Monitoring |
| _@port_ | closing : PD.IF::Closing       |

#### 2.1.2. Main interfaces

| @ifblk  | Name       | Description |
| ------- | ---------- | ----------- |
| INIT    | Initiation | Project Initiation phase
| _@port_ | initiate : PD.IF.OP::Initiate  |
|
| PLAN    | Planning   | Project Planning phase
| _@port_ | plan : PD.IF.OP::Plan             |
|
| EXEC    | Execution  | Project Execution phase
| _@port_ | identifyRequest : PD.IF.OP::IdentifyRequest
|         | analizeRequest : PD.IF.OP::AnalizeRequest
|         | establishCriteria : PD.IF.OP::EstablishCriteria
|         | getApproved : PD.IF.OP::GetApproved
|         | reviewImplementation : PD.IF.OP::ReviewImplementation
|
| MON     | Monitoring | Project Monitoring phase
| _@port_ | monitor : PD.IF.OP::Monitor  |
|
| CLOS    | Closing    | Project Closing phase
| _@port_ | close : PD.IF.OP::Close           |

#### 2.1.3. [@ OP] Operations

##### 2.1.3.1. Initiation

Operation **Initiate**() : PD.WP::Project Plan

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 11-gh000    | Initiate | Project Initiation
| @parameter  | in initialProjectPlan : PD.WP::Project Plan | プロジェクトの開始情報
| @returnType |
| @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
|
| @satisfy    | RA.SUP10.BP1.1 | 変更依頼活動、変更依頼のステータスモデル、分析基準、およびこれらの活動を実施するための責任を含む変更依頼管理戦略を策定する。
|             | RA.SUP10.BP1.2 | 影響を受ける関係者との窓口を定義し、維持する。

##### 2.1.3.2. Planning

Operation **Plan**() : PD.WP::Project Plan

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 21-gh000    | Plan | Planning Change Management
| @parameter  |  |
| @returnType |  |
| @reference  |  |

##### 2.1.3.3. Execution

Operation **IdentifyRequest**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 31-gh000    | IdentifyRequest |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP10.BP2.1 | 各変更依頼を一意に識別し、変更依頼者および理由を含めて記述し、記録する。
|             | RA.SUP10.BP3.1 | ステータスモデルに従って、各変更依頼の追跡が容易となるようにステータスを割り当てる。

Operation **AnalizeRequest**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 32-gh000    | AnalizeRequest |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP10.BP4.1 | 戦略に従って変更依頼を、影響を受ける作業成果物および他の変更依頼との依存性を含めて分析する。

Operation **EstablishCriteria**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 33-gh000    | EstablishCriteria |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP10.BP4.2 | 変更依頼の影響を評価し、実装内容を確認するための基準を確立する。
|             | **@todo**      | **なにをもってクライテリアが確定していることとするか。チケットへは固有の記述を行えばよいと思うが、相互の依存関係を確認しうるためにはある程度要件/仕様を明記しないとならないのではないか。少なくとも考え方は示す。**

Operation **GetApproved**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 34-gh000    | GetApproved |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP10.BP5.1 | 分析結果およびリソースの利用可能性に基づいて優先順位を付け（リリースへ割り当て）、承認する。
|         | @satisfiedBy | PD.IF.OP::

Operation **ReviewImplementation**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 35-gh000    | ReviewImplementation |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP10.BP6.1 | 変更依頼の実装内容に対して終結前にレビューし、実装確認基準を満足し、全関連プロセスが適用されていることを確認する。
|             | **@todo**      | **この要件割付方法を再検討する。OPに分解しても実装と整合しなくなりそう。IssueType Classをモデリング（状態遷移＋アクティビティ＋終了基準、などをセットにしたもの）したほうがよさげ。**

##### 2.1.3.4. Monitoring

Operation **Monitor**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 41-gh000    | Monitor |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    |  |

##### 2.1.3.5. Closing phase

Operation **Close**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 51-gh000    | Close |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    |  |

### 2.2. [@ WP] Work Product

| @block | Name | Description |
| ------ | ---- | ----------- |
| PP     | ProjectPlan | Project Plan
|
| @satisfy | RA.SUP10.BP1.3 | 影響を受ける関係者との窓口定義を記載する。

### 2.3. [@ PD.WP.IM] Organization level process

| @block | Name | Description |
| ------ | ---- | ----------- |
| PD.WP.IM::ChangeRequest |
|
| @satisfy | RA.SUP10.BP2.1 | 変更依頼内容、変更依頼者および理由を含めて記述・記録可能にする。
|          | RA.SUP10.BP3.2 | ステータスを記載可能（できれば必須）にする。
|          | RA.SUP10.BP7.1 | 変更依頼を終結まで追跡し、フィードバックを変更依頼者へ提供するよう手順が定められている。
|          | RA.SUP10.BP8.2 | 変更依頼が問題を原因として開始される場合、該当する問題チケットへのリンク記載が要求される。
