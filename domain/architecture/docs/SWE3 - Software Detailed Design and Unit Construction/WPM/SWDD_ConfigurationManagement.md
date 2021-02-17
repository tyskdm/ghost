# [@ SWDD.SUP8] Configuration Management Process

[@doc P.WP.SWDD.SUP8 | @type ghost 0.4]

## 1. [@SML:req RA] Requirements analysis

### 1.1. Automotive SPICE SUP.8 Configuration Management

#### 1.1.1. Purpose

| @reqt | Name   | Description |
| ----- | ------ | ----------- |
| SUP.8 | Configuration Management | 構成管理プロセスの目的は、プロセスまたはプロジェクトのすべての作業成果物の完整性を確立し、維持し、影響を受ける関係者で利用可能にすることである。
|       | @trace | @copy ASPICE.3.1.SUP8.PURPOSE

#### 1.1.2. Outcome

| @reqt | Name     | Description |
| ----- | -------- | ----------- |
|       | @trace   | @refine SUP.8
| OC1   | Outcome1 | 構成管理戦略が策定されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC1
| OC2   | Outcome2 | プロセスまたはプロジェクトによって作成されたすべての構成品目が、構成管理戦略に従って識別され、定義され、ベースライン化されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC2
| OC3   | Outcome3 | 構成品目の修正およびリリースが制御されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC3
| OC4   | Outcome4 | 修正およびリリースが影響を受ける関係者で利用可能とされている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC4
| OC5   | Outcome5 | 構成品目および修正のステータスが記録され、報告されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC5
| OC6   | Outcome6 | ベースラインの完全性および一貫性が確保されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC6
| OC7   | Outcome7 | 構成品目の保管が制御されている。
|       | @trace   | @copy ASPICE.3.1.SUP8.OC7

#### 1.1.3. Base Practice

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | 構成管理戦略の策定 | 以下を含めた構成管理戦略を策定する。<br>・責任<br>・ツールおよびリポジトリ<br>・構成品目の基準<br>・命名規則<br>・アクセス権<br>・ベースラインの基準<br>・マージおよびブランチの戦略<br>・構成品目の改訂履歴の記載方法
|         | @trace       | @deriveReqt OC1
|         | @note 1      | 一般的に構成管理戦略は、各種アプリケーションパラメーターのセットまたは他の要因によってもたらされる製品／ソフトウェアのバリアントの取り扱いに役立つ。
|         | @note 2      | ブランチ管理戦略は、ブランチが認められる事例、許可の必要性の有無、ブランチに対するマージ方法、および全変更が一貫して統合され、他の変更または元となるソフトウェアが破損していないことを検証するために必要な活動について明記する。
| _@spec_ | BP1.1        | 要件を満たす構成管理戦略書を作成し、プロジェクト固有情報のみを外部文書（プロジェクト計画書を想定）で指定可能にする。
|         | @satisfiedBy | PD.WP::ConfigurationManagementStrategy
|
| BP2     | 構成品目の識別 | 構成管理戦略に従って構成品目を識別し、文書化する。
|         | @trace       | @deriveReqt OC2
|         | @note 3      | 一般的に構成制御は、顧客へ納入する成果物、指定された内部作業成果物、取得成果物、ツール、ならびにこれらの作業成果物の作成および記述時に使用する他の構成品目に対して適用する。
| _@spec_ | BP2.1        | 成果物新規作成時に構成制御要否判定を行い、管理方法の区分を行うこと。
|         | @satisfiedBy | PD.IF.OP::CreateWorkproduct
|
| BP3     | 構成管理体系の確立 | 構成管理戦略に従って構成管理体系を確立する。
|         | @trace       | @deriveReqt OC1, OC2, OC3, OC4, OC6, OC7
| _@spec_ | BP3.1        | 構成管理戦略書に従い、プロジェクト固有情報として決めるべき部分を決定し（プロジェクト計画書に記載されることを想定）運用可能にする。
|         | @satisfiedBy | PD.IF.OP::Initiate
|
| BP4     | ブランチ管理の確立 | 構成管理戦略に従って、同一のベースを使用する並行開発が適用される時のブランチ管理を確立する。
|         | @trace       | @deriveReqt OC1, OC3, OC4, OC6, OC7
| _@spec_ | BP1.1        | 構成管理戦略書において未定義の、ブランチモデルについて決定し文書化する（PPを想定）。
|         | @satisfiedBy | PD.IF.OP::Initiate
|
| BP5     | 修正およびリリースの制御 | 構成管理戦略に従って、構成品目の制御の仕組みを確立し、その仕組みを使用して修正およびリリースを制御する。
|         | @trace       | @deriveReqt OC3, OC4, OC5
| _@spec_ | BP1.1        | todo: リリースプロセス全体のうち、構成管理に関するプロセスをここで定義する。
|         | @satisfiedBy | PD.IF.OP::Release
|
| BP6     | ベースラインの確立 | 構成管理戦略に従って、内部目的のためのベースラインおよび外部納入のためのベースラインを確立する。
|         | @trace       | @deriveReqt OC2
|         | @note 4      | ベースラインについては、SPL.2製品リリースプロセスも参照のこと。
| _@spec_ | BP1.1        | 標準ベースライン基準が存在すること。
|         | @satisfiedBy | PD.IF.OP::Initiate
|
| BP7     | 構成ステータスの報告 | 構成品目のステータスを、プロジェクト管理および他の関連するプロセスに役立てるために記録し、報告する。
|         | @trace       | @deriveReqt OC5
|         | @note 5      | 構成ステータスの定期的な報告は（例：現在いくつの構成品目が、作業中、チェックイン済、テスト済、リリース済であるか等）、プロジェクト管理活動、およびソフトウェア統合のような特定のプロジェクトフェーズに役立つ。
| _@spec_ | BP1.1        |
|         | @satisfiedBy | PD.IF.OP::Initiate
|
| BP8     | 構成された品目に関する情報の検証 | 構成された品目に関する情報、およびそれらのベースラインが完全であることを検証し、ベースラインの一貫性を確保する。
|         | @trace       | @deriveReqt OC6
|         | @note 6      | 一般的な実装には、ベースライン監査および構成管理監査の実施がある。
| _@spec_ | BP1.1        |
|         | @satisfiedBy | PD.IF.OP::Initiate
|
| BP9     | 構成品目およびベースラインの保管管理 | 使用している構成管理体系の保管、アーカイブ（長期保管）、およびバックアップに対し、適切なスケジュール作成およびリソース提供を通じて、構成品目およびベースラインの完整性および利用可能性を保証する。
|         | @trace       | @deriveReqt OC4, OC5, OC6, OC7
|         | @note 7      | バックアップ、保管、およびアーカイブは、利用可能な保管媒体の保証寿命より長い期間必要な場合がある。影響を受ける関連構成品目には、備考2および備考3で言及されているものを含む。利用可能期間は、契約要件に明記されている場合がある。
| _@spec_ | BP1.1        |
|         | @satisfiedBy | PD.IF.OP::Initiate

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
| @satisfy    | RA.SUP8.BP1.1 | 変更依頼活動、変更依頼のステータスモデル、分析基準、およびこれらの活動を実施するための責任を含む変更依頼管理戦略を策定する。
|             | RA.SUP8.BP1.2 | 影響を受ける関係者との窓口を定義し、維持する。

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
| @satisfy    | RA.SUP8.BP2.1 | 各変更依頼を一意に識別し、変更依頼者および理由を含めて記述し、記録する。
|             | RA.SUP8.BP3.1 | ステータスモデルに従って、各変更依頼の追跡が容易となるようにステータスを割り当てる。

Operation **AnalizeRequest**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 32-gh000    | AnalizeRequest |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP8.BP4.1 | 戦略に従って変更依頼を、影響を受ける作業成果物および他の変更依頼との依存性を含めて分析する。

Operation **EstablishCriteria**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 33-gh000    | EstablishCriteria |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP8.BP4.2 | 変更依頼の影響を評価し、実装内容を確認するための基準を確立する。
|             | **@todo**      | **なにをもってクライテリアが確定していることとするか。チケットへは固有の記述を行えばよいと思うが、相互の依存関係を確認しうるためにはある程度要件/仕様を明記しないとならないのではないか。少なくとも考え方は示す。**

Operation **GetApproved**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 34-gh000    | GetApproved |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP8.BP5.1 | 分析結果およびリソースの利用可能性に基づいて優先順位を付け（リリースへ割り当て）、承認する。
|         | @satisfiedBy | PD.IF.OP::

Operation **ReviewImplementation**() :

| @operation  | Name | Description |
| ----------- | ---- | ----------- |
| 35-gh000    | ReviewImplementation |
| @parameter  |  |
| @returnType |  |
| @reference  |  |
|
| @satisfy    | RA.SUP8.BP6.1 | 変更依頼の実装内容に対して終結前にレビューし、実装確認基準を満足し、全関連プロセスが適用されていることを確認する。
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
| @satisfy | RA.SUP8.BP1.3 | 影響を受ける関係者との窓口定義を記載する。

### 2.3. [@ PD.WP.IM] Organization level process

| @block | Name | Description |
| ------ | ---- | ----------- |
| PD.WP.IM::ChangeRequest |
|
| @satisfy | RA.SUP8.BP2.1 | 変更依頼内容、変更依頼者および理由を含めて記述・記録可能にする。
|          | RA.SUP8.BP3.2 | ステータスを記載可能（できれば必須）にする。
|          | RA.SUP8.BP7.1 | 変更依頼を終結まで追跡し、フィードバックを変更依頼者へ提供するよう手順が定められている。
|          | RA.SUP8.BP8.2 | 変更依頼が問題を原因として開始される場合、該当する問題チケットへのリンク記載が要求される。
