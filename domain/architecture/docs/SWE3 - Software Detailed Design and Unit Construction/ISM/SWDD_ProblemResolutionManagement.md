# [@ SWDD.SUP9] Problem Resolution Management Process

[@doc P.WP.SWDD.SUP9 | @type ghost 0.4]

## 1. [@SML:req RA] Requirements analysis

### 1.1. Automotive SPICE SUP.9 Problem Resolution Management

#### 1.1.1. Purpose

| @reqt | Name   | Description |
| ----- | ------ | ----------- |
| SUP.9 | Problem Resolution Management | 問題解決管理プロセスの目的は、問題が識別され、分析され、管理され、解決まで制御されることを確実にすることである。
|       | @trace | @copy ASPICE.3.1.SUP9.PURPOSE

#### 1.1.2. Outcome

| @reqt | Name     | Description |
| ----- | -------- | ----------- |
|       | @trace   | @refine SUP.9
| OC1   | Outcome1 | 問題解決管理戦略が策定されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC1
| OC2   | Outcome2 | 問題が記録され、一意に識別され、分類されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC2
| OC3   | Outcome3 | 問題が適切な解決策を識別するために分析され、評価されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC3
| OC4   | Outcome4 | 問題解決に着手されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC4
| OC5   | Outcome5 | 問題が終結まで追跡されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC5
| OC6   | Outcome6 | 問題のステータスおよび問題の傾向が把握されている。
|       | @trace   | @copy ASPICE.3.1.SUP9.OC6

#### 1.1.3. Base Practice

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | 問題解決管理戦略の策定 | 問題解決活動、問題のステータスモデル、警告の通知、これらの活動を実施するための責任、および緊急解決戦略を含む問題解決管理戦略を策定する。影響を受ける関係者との窓口を定義し、その定義内容を維持する。
|         | @trace       | @deriveReqt OC1
|         | @note 1      | 製品のライフサイクルの中で、異なる問題解決活動も可能である（例：プロトタイプ構築時および量産開発時）。
|         | @trace       | @copy ASPICE.3.1.SUP9.BP1
| _@spec_ | BP1.1        | 問題解決活動、問題のステータスモデル、警告の通知、これらの活動を実施するための責任、および緊急解決戦略を含む問題解決管理戦略を策定する。
|         | @note        | 戦略はプロセスで標準パターンを定義しておき、必要なときのみ変更するものとする。
|         | **@todo**    | **問題のステータスモデルとして、問題（プロジェクトへの要件達成を阻害するもの、など要定義）と不具合（Defect：いわゆるバグ）とを区別する。顧客から発生する stimulus、プロジェクト内部からの stimulus をそれぞれ分類しておくなど、整理する。それらはもっと上位で定義されないとここで決めにくい？**
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP1.2        | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。
|         | @satisfiedBy | PD.IF.OP::Initiate
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP2     | 問題の識別および記録 | 各問題を一意に識別し、記述し、記録する。問題を再現および診断するための支援情報は、提供すべきである。
|         | @trace       | @deriveReqt OC2
|         | @note 2      | 一般的に支援情報には、問題の出所、再現方法、環境情報、検出者等を含む。
|         | @note 3      | 一意の識別は、実施した変更へのトレーサビリティを裏付ける。
| _@spec_ | BP2.1        | 各問題を一意に識別し、記述し、記録する。
|         | @satisfiedBy | PD.IF.OP::IdentifyProblem
| _@spec_ | BP2.2        | 識別された問題を記述し、記録する。再現・診断のための支援情報をあわせて記録する。
|         | @satisfiedBy | PD.WP.IM::Problem
|         | @satisfiedBy | PD.WP.IM::Defect
|
| BP3     | 問題のステータスの記録 | ステータスモデルに従って、各問題の追跡が容易となるようにステータスを割り当てる。
|         | @trace       | @deriveReqt OC6
| _@spec_ | BP3.1        | ステータスモデルに従って、ステータスを割り当てる。
|         | @satisfiedBy | PD.IF.OP::IdentifyProblem
|         | _**@note**_  | ステータスモデルを設計することは必須なのだが、割当先はどうする？ どの成果物が引き受けるのか。それは設計書でどのように表現されるか。
|
| BP4     | 問題の原因診断および影響判断 | 問題を分類し、適切な対策を決定するために、問題を調査し、その原因および影響を判断する。
|         | @trace       | @deriveReqt OC2, OC3
|         | @note 4      | 問題の分類（例：A、B、C、低、中、高）は、重大度、影響度、危機度、緊急度、変更プロセスとの関連度に基づく。
| _@spec_ | BP4.1        | 問題を調査し、その原因および影響を判断する。
|         | @satisfiedBy | PD.IF.OP::InvestigateProblem
| _@spec_ | BP4.2        | 問題を分類し、適切な対策を決定する。
|         | @seealso     | BP4.note.4
|         | @satisfiedBy | PD.IF.OP::InvestigateProblem
|
| BP5     | 緊急解決策の権限の付与 | 戦略に基づき問題の緊急解決が必要となる場合、戦略に従って迅速な対応のための権限を取得しなければならない。
|         | @trace       | @deriveReqt OC4
| _@spec_ | BP5.1        | 問題の緊急解決が必要となる場合、迅速な対応のための権限を取得する（Call AuthorizeUrgentAction）。
|         | @satisfiedBy | PD.IF.OP::InvestigateProblem
| _@spec_ | BP5.2        | 戦略に従い、迅速な対応のための権限を取得する。
|         | @satisfiedBy | PD.IF.OP::AuthorizeUrgentAction
|
| BP6     | 警告の通知 | 戦略に基づき問題が他のシステムまたは他の関係者に大きな影響を及ぼす場合、戦略に従って警告を通知する必要がある。
|         | @trace       | @deriveReqt OC4
| _@spec_ | BP6.1        | 戦略に基づき問題が他のシステムまたは他の関係者に大きな影響を及ぼす場合、戦略に従って警告を通知する（Call RaiseAlertNotification）。
|         | @satisfiedBy | PD.IF.OP::InvestigateProblem
| _@spec_ | BP6.2        | 戦略に従って警告を通知する。
|         | @satisfiedBy | PD.IF.OP::RaiseAlertNotification
|
| BP7     | 問題解決の開始 | 戦略に従って問題を解決するために、対策のレビュー活動を含む適切な対策を開始する。または変更依頼を開始する。
|         | @trace       | @deriveReqt OC4
|         | @note 5      | 適切な対策には、変更依頼の開始を含む。変更依頼の管理については、SUP.10を参照のこと。
|         | @note 6      | （問題を予防するための）プロセス改善は、PIM.3プロセス改善プロセスで実装する。プロジェクト管理に関連する一般的な改善（例：教訓）は、MAN.3プロジェクト管理プロセスの一環で実施する。作業成果物に関連する一般的な改善は、SUP.1品質保証プロセスの一環で実装する。
| _@spec_ | BP7.1        | 戦略に従って問題を解決するために、対策のレビュー活動を含む適切な対策を実施、または変更依頼を開始するプロセスステップを含むこと。
|         | @satisfiedBy | PD.WP.IM::Problem
|         | @satisfiedBy | PD.WP.IM::Defect
| _@spec_ | BP7.2        | Problem / Defect（Riskも）チケットはその緊急性に従い、イテレーションプランニングとは別のタイミングでスケジュールされること。
|         | **@todo**    | **この要件はどこへアロケートされるべき？ PM あるいは PIM になるだろうか。モニタリング以外に、非同期イベントの打上げに対応するコールバック受付手順が必要になる。**
|
| BP8     | 終結まで問題の追跡 | 関連するすべての変更依頼を含め、問題のステータスを終結まで追跡する。問題の終結前に、正式な受け入れが許可されなければならない。
|         | @trace       | @deriveReqt OC5, OC6
| _@spec_ | BP8.1        | 関連する全ての変更依頼は、Problem / Defect チケットに記録され、ステータスが追跡されること。
|         | @satisfiedBy | PD.WP.IM::Problem
|         | @satisfiedBy | PD.WP.IM::Defect
| _@spec_ | BP8.2        | 問題の解決活動開始にあたって特別な対応をとったものは、その終結前にそれら特別対応の完了をオーサライズすること。（UrgentAction のために特別な権限を得た、あるいは警告を通知したものは、その終結について承認を得る）
|         | @satisfiedBy | PD.WP.IM::Problem
|         | @satisfiedBy | PD.WP.IM::Defect
|
| BP9     | 問題の傾向分析 | 戦略に従って、問題解決管理データを収集し、分析し、傾向を識別し、プロジェクトに関連する対策を開始する。
|         | @trace       | @deriveReqt OC6
|         | @note 7      | 一般的に収集データには、どこで問題が発生したか、いつ、どのように検出したか、どのような問題の影響があったか等が含まれる。
|         | @seealso     | BP7.note.6
|         | **@todo**    | **BP に付与されている note の階層を上げる。BP7.note.6ではなく、Note.6 と参照可能なようにしたい。**
| _@spec_ | BP1.1        | 問題解決管理データのうち、チケットから機械的に収集可能なデータを収集する
|         | @satisfiedBy | ISM（+ Ghost Analyzer）
|         | @satisfiedBy | PD.IF.OP::Monitor
| _@spec_ | BP1.2        | 収集されたデータを分析し、傾向を識別し、プロジェクトに関連する対策を開始する。
|         | @satisfiedBy | PD.IF.OP::Monitor

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
| _@port_ | identifyProblem : PD.IF.OP::IdentifyProblem
|         | investigateProblem : PD.IF.OP::InvestigateProblem
|         | authorizeUrgentAction : PD.IF.OP::AuthorizeUrgentAction
|         | raiseAlertNotification : PD.IF.OP::RaiseAlertNotification
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
| @returnType | PD.WP::RiskManagementPlan |
| @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
|
| @satisfy    | RA.SUP9.BP1.1 | 問題解決活動、問題のステータスモデル、警告の通知、これらの活動を実施するための責任、および緊急解決戦略を含む問題解決管理戦略を策定する。
|             | @note         | 戦略はプロセスで標準パターンを定義しておき、必要なときのみ変更するものとする。
|             | **@todo**     | **問題のステータスモデルとして、問題（プロジェクトへの要件達成を阻害するもの、など要定義）と不具合（Defect：いわゆるバグ）とを区別する。顧客から発生する stimulus、プロジェクト内部からの stimulus をそれぞれ分類しておくなど、整理する。それらはもっと上位で定義されないとここで決めにくい？**
|             | RA.SUP9.BP1.2 | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。

##### 2.1.3.2. Planning

Operation **Plan**() : PD.WP::Project Plan

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 21-gh000    | Plan | Project Planning
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP1.2        | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。

##### 2.1.3.3. Execution

Operation **IdentifyProblem**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 31-gh000    | IdentifyProblem |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP2.1 | 各問題を一意に識別し、記述し、記録する。
|             | RA.SUP9.BP3.1 | ステータスモデルに従って、ステータスを割り当てる。

Operation **InvestigateProblem**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 32-gh000    | InvestigateProblem |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP4.1 | 問題を調査し、その原因および影響を判断する。
|             | RA.SUP9.BP4.2 | 問題を分類し、適切な対策を決定する。
|             | @seealso      | BP4.note.4
|             | RA.SUP9.BP5.1 | 問題の緊急解決が必要となる場合、迅速な対応のための権限を取得する（Call AuthorizeUrgentAction）。
|             | RA.SUP9.BP6.1 | 戦略に基づき問題が他のシステムまたは他の関係者に大きな影響を及ぼす場合、戦略に従って警告を通知する（Call RaiseAlertNotification）。

Operation **AuthorizeUrgentAction**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 33-gh000    | AuthorizeUrgentAction |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP5.2 | 戦略に従い、迅速な対応のための権限を取得する。

Operation **RaiseAlertNotification**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 34-gh000    | RaiseAlertNotification |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP6.2 | 戦略に従って警告を通知する。

##### 2.1.3.4. Monitoring

Operation **Monitor**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 41-gh000    | Monitor | Monitoring problem status
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP9.BP1.1 | 問題解決管理データのうち、チケットから機械的に収集可能なデータを収集する。
|             | RA.SUP9.BP1.2 | 収集されたデータを分析し、傾向を識別し、プロジェクトに関連する対策を開始する。

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
| @satisfy | RA.SUP9.BP1.2 | 影響を受ける関係者との窓口を定義し、その定義内容を記述する。

### 2.3. [@ PD.WP.IM] Organization level process

| @block | Name | Description |
| ------ | ---- | ----------- |
| PD.WP.IM::Problem |
| PD.WP.IM::Defect  |
|
| @satisfy | RA.SUP9.BP2.2 | 識別された問題を記述し、記録する。再現・診断のための支援情報をあわせて記録する。
|          | RA.SUP9.BP7.1 | 戦略に従って問題を解決するために、対策のレビュー活動を含む適切な対策を実施、または変更依頼を開始するプロセスステップを含むこと。
|          | RA.SUP9.BP8.1 | 関連する全ての変更依頼は、Problem / Defect チケットに記録され、ステータスが追跡されること。
|          | RA.SUP9.BP8.2 | 問題の解決活動開始にあたって特別な対応をとったものは、その終結前にそれら特別対応の完了をオーサライズすること。（UrgentAction のために特別な権限を得た、あるいは警告を通知したものは、その終結について承認を得る）
