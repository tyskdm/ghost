# [@ SWDD.MAN5] Risk Management Process

[@doc P.WP.SWDD.MAN5 | @type ghost 0.4]

## 1. [@SML:req RA] Requirements analysis

### 1.1. Automotive SPICE MAN.5 Risk Management

#### 1.1.1. Purpose

| @reqt | Name     | Description |
| ----- | -------- | ----------- |
| MAN.5 | Project management | リスク管理プロセスの目的は、継続的にリスクを識別し、分析し、対応し、監視することである。
|       | @trace   | @copy ASPICE.3.1.MAN5.PURPOSE

#### 1.1.2. Outcome

| @reqt | Name     | Description |
| ----- | -------- | ----------- |
|       | @trace   | @refine MAN.5
| OC1   | Outcome1 | 実施すべきリスク管理の範囲が特定されている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC1
| OC2   | Outcome2 | 適切なリスク管理戦略が定義され、実装されている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC2
| OC3   | Outcome3 | プロジェクト実施中に発生したリスクが識別されている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC3
| OC4   | Outcome4 | リスクが分析され、これらのリスク対応にリソースを投入するための優先順位が決定されている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC4
| OC5   | Outcome5 | リスク測定項目が定義され、適用され、リスクのステータス変更および対応活動の進捗を判断するために評価されている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC5
| OC6   | Outcome6 | リスクの影響を是正または回避するために、優先順位、発生確率、および影響度、または他の定義されたリスク閾値に基づいて適切な対応が講じられている。
|       | @trace   | @copy ASPICE.3.1.MAN5.OC6

#### 1.1.3. Base Practice

| @USDM   | Name | Description |
| ------- | ---- | ----------- |
| BP1     | リスク管理の範囲の確立 | プロジェクトで実施すべきリスク管理の範囲を、組織のリスク管理方針に従って決定する。
|         | @trace       | @deriveReqt OC1
|         | @note 1      | リスクには、技術的なリスク、コストに関するリスク、およびタイミング的なリスクを含む。
|         | @trace       | @copy ASPICE.3.1.MAN5.BP1
| _@spec_ | BP1.1        | プロジェクトで実施すべきリスク管理の範囲を、組織のリスク管理方針に従って決定する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP1.2        | 技術的なリスク、コストに関するリスク、およびタイミング的なリスクを含む、プロジェクトで実施すべきリスク管理範囲を記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
| _@spec_ | BP1.3        | リスク管理方針
|         | @satisfiedBy | 組織
|
| BP2     | リスク管理戦略の定義 | リスクを識別し、軽減させ、各リスクまたは一連のリスクに対する許容レベルを設定するために、適切な戦略をプロジェクトおよび組織レベルの両方で定義する。
|         | @trace       | @deriveReqt OC2
| _@spec_ | BP2.1        | リスクを識別し、軽減させ、各リスクまたは一連のリスクに対する許容レベルを設定するために、プロジェクトレベルのリスク管理戦略を定義する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP2.2        | 組織レベルのリスク管理戦略を定義する。
|         | @satisfiedBy | 組織::Initiate
| _@spec_ | BP2.3        | プロジェクトレベルのリスク管理戦略を記述する。
|         | @satisfiedBy | PD.WP::ProjectPlan
|
| BP3     | リスクの識別 | リスクをプロジェクトの初期にプロジェクト戦略の中で識別し、かつ技術的な決定または管理的な決定の都度、リスク要因を継続的に精査してプロジェクト実施中に発生したリスクも識別する。
|         | @trace       | @deriveReqt OC2, OC3
|         | @note 2      | 潜在的なリスクの原因または要因を分析するリスク領域の例には、コスト、スケジュール、工数、リソース、および技術を含む。
|         | @note 3      | リスク要因の例には、対応する場合としない場合の兼ね合い、あるプロジェクトフィーチャーを実装しない決定、設計変更、予測されるリソースの不足を含む。
| _@spec_ | BP3.1        | プロジェクトの初期にプロジェクト戦略に従いリスクを識別する。
|         | @satisfiedBy | PD.IF.OP::Initiate
| _@spec_ | BP3.2        | 技術的な決定または管理的な決定の都度、リスク要因を継続的に精査してプロジェクト実施中に発生したリスクを識別する。
|         | @note        | BP4.note5 参照
|         | @satisfiedBy | PD.IF.OP::SearchRisks
| _@spec_ | BP3.3        | IssueManagemer にリスクを登録する。
|         | @satisfiedBy | PD.IF.OP::IdentifyRisk
|
| BP4     | リスクの分析 | リスクを軽減するためにリスクを分析し、リソース投入の優先順位を決定する。
|         | @trace       | @deriveReqt OC4
|         | @note 4      | 通常、リスクは、発生確率、影響度、および重大度を決定するために分析する。
|         | @note 5      | リスクの存在を把握するために、各種技法（例：機能分析、シミュレーション、FMEA、FTA 等）をシステムの分析で使用する。
| _@spec_ | BP4.1        | リスクを分析し、リソース投入の優先順位を決定する。
|         | @satisfiedBy | PD.IF.OP::AnalyzeRisks
|
| BP5     | リスク対策の定義 | 各リスク（または一連のリスク）に対して、許容レベルに維持／削減させるために選定した対策を定義し、実施し、追跡する。
|         | @trace       | @deriveReqt OC5, OC6
| _@spec_ | BP5.1        | リスクに対して、許容レベルに維持／削減させるために選定した対策を定義する。
|         | @satisfiedBy | PD.IF.OP::DefineAction
|
| BP6     | リスクの監視 | 各リスク（または一連のリスク）に対して、リスクのステータス変更を決定するため、および軽減活動の進捗を評価するために測定項目（例：メトリクス）を定義する。これらのリスク測定項目を適用し、評価する。
|         | @trace       | @deriveReqt OC5, OC6
|         | @note 6      | 重大なリスクは上位管理層へ伝達し、上位管理層によるリスクの監視が必要な場合もある。
| _@spec_ | BP6.1        | リスクに対して、リスクのステータス変更を決定するため、および軽減活動の進捗を評価するために測定項目（例：メトリクス）を定義する。
|         | @satisfiedBy | PD.IF.OP::DefineAction
| _@spec_ | BP6.2        | リスク測定項目を適用し、評価する。
|         | @satisfiedBy | PD.IF.OP::MonitorRisks
|
| BP7     | 是正処置の実施 | リスク軽減において期待した進展が得られない場合、リスクの影響を削減または回避するために適切な是正処置を講じる。
|         | @trace       | @deriveReqt OC6
|         | @note 7      | 是正処置には、新規の軽減戦略の策定および実装、または既存戦略の調整を含む。
| _@spec_ | BP7.1        | リスク軽減において期待した進展が得られない場合、リスクの影響を削減または回避するために適切な是正処置を講じる。
|         | @satisfiedBy | PD.IF.OP::MonitorRisks

#### 1.2 Automotive SPICE Annex-B Work product characteristics

#### 1.2.1. Risk action request

##### Declaration

| @reqt | Name | Description |
| ----- | ---- | ----------- |
| WPC.13.00 | Record | - 達成した結果を記述している作業成果物、またはプロセスにおいて実施した活動の証拠を提供している作業成果物<br>- 識別および検索可能なデータ集合の一部である一項目
| | @trace | @copy ASPICE.3.1.WPC.13.00
|
| WPC.13.20 | Risk action request |
| | @trace | @deriveReqt WPC.13.00
| | @trace | @copy ASPICE.3.1.WPC.13.20

##### [@ WPC.13.20] Risk action request

[@reqt.text] Requirement text

> - 着手日
> - 範囲
> - 対象
> - 依頼者
> - リスク管理プロセスの背景
>   - このセクションは、一度規定し、その後変更が生じなければ、対策依頼の発生時にそれを参照する
>   - プロセスの範囲
>   - 利害関係者の見地
>   - リスクのカテゴリー
>   - リスクの閾値
>   - プロジェクトの目標
>   - プロジェクトの想定
>   - プロジェクトの制約
> - リスク
>   - このセクションは、ユーザーの選択に応じて、1 つまたは複数のリスクを網羅してよい
>   - 上記のすべての情報が、一連のリスク全体に当てはまる場合、1つの対策依頼で十分としてよい
>   - 上記の情報がリスクによって異なる場合、各依頼は、1 つのリスク、または共通の情報を共有する複数のリスクを網羅してよい
>   - リスクの記述
>   - リスクの発生確率
>   - リスクの影響
>   - リスクの予測タイミング
> - リスク対応の選択肢
>   - 選択肢の記述
>   - 推奨される選択肢
>   - 正当な理由
> - リスク対策依頼の対応
>   - 各依頼は、受入、却下、または修正のいずれか、およびその決定に対する根拠について注釈を付けるべきである。

## 2. [@SML:bdd PD] Process declaration

### 2.1. [@ IF] Interfaces

#### 2.1.1. Risk Management interface

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
| _@port_ | searchRisks : PD.IF.OP::SearchRisks
|         | identifyRisk : PD.IF.OP::IdentifyRisk
|         | analyzeRisks : PD.IF.OP::AnalyzeRisks
|         | defineAction : PD.IF.OP::DefineAction
|
| MON     | Monitoring | Project Monitoring phase
| _@port_ | monitorRisks : PD.IF.OP::MonitorRisks       |
|
| CLOS    | Closing    | Project Closing phase
| _@port_ | close : PD.IF.OP::Close           |

#### 2.1.3. [@ OP] Operations

##### 2.1.3.1. Initiation

1. Operation **Initiate**() : PD.WP::Project Plan

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 11-gh000    | Initiate | Project Initiation
    | @parameter  | in initialProjectPlan : PD.WP::Project Plan | プロジェクトの開始情報
    | @returnType | PD.WP::RiskManagementPlan |
    | @reference  | projectplan : PD.WP::Project Plan | プロジェクト計画書
    |
    | @satisfy    | RA.MAN5.BP1.1 | プロジェクトで実施すべきリスク管理の範囲を、組織のリスク管理方針に従って決定する。
    |             | RA.MAN5.BP2.1 | リスクを識別し、軽減させ、各リスクまたは一連のリスクに対する許容レベルを設定するために、プロジェクトレベルのリスク管理戦略を定義する。
    |             | RA.MAN5.BP3.1 | プロジェクトの初期にプロジェクト戦略の中でリスクを識別する。

##### 2.1.3.2. Planning

1. Operation **Plan**() : PD.WP::Project Plan

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 21-gh000    | Plan | Project Planning
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    |  |

##### 2.1.3.3. Execution

1. Operation **SearchRisks**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 31-gh000    | SearchRisks |
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    | RA.MAN5.BP3.2 | 技術的な決定または管理的な決定の都度、リスク要因を継続的に精査してプロジェクト実施中に発生したリスクを識別する。
    |             | @note         | BP4.note5 参照

2. Operation **IdentifyRisk**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 32-gh000    | IdentifyRisk |
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    | RA.MAN5.BP3.3 | IssueManagemer にリスクを登録する。

3. Operation **AnalyzeRisks**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 33-gh000    | AnalyzeRisks |
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    | RA.MAN5.BP4.1        | リスクを分析し、リソース投入の優先順位を決定する。

4. Operation **DefineAction**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 33-gh000    | DefineAction |
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    | RA.MAN5.BP5.1 | リスクに対して、許容レベルに維持／削減させるために選定した対策を定義する。
    |             | RA.MAN5.BP6.1 | リスクに対して、リスクのステータス変更を決定するため、および軽減活動の進捗を評価するために測定項目（例：メトリクス）を定義する。

##### 2.1.3.4. Monitoring

1. Operation **MonitorRisks**() :

    | @operation  | Name | Description |
    | ----------- | ---- | ----------- |
    | 41-gh000    | MonitorRisks | Monitoring risk status
    | @parameter  |  |
    | @returnType |  |
    | @reference  |  |
    |
    | @satisfy    | RA.MAN5.BP6.2 | リスク測定項目を適用し、評価する。
    | @satisfy    | RA.MAN5.BP7.1 | リスク軽減において期待した進展が得られない場合、リスクの影響を削減または回避するために適切な是正処置を講じる。

##### 2.1.3.5. Closing phase

1. Operation **Close**() :

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
| @satisfy | RA.MAN5.BP1.2        | 技術的なリスク、コストに関するリスク、およびタイミング的なリスクを含む、プロジェクトで実施すべきリスク管理範囲を記述する。
|          | RA.MAN5.BP2.3        | プロジェクトレベルのリスク管理戦略を記述する。

### 2.3. [@ ORG] Organization level process

| @block | Name | Description |
| ------ | ---- | ----------- |
| ORG    | Organization | Organization level process
|
| @satisfy | BP1.3        | リスク管理方針
|          | @satisfiedBy | 組織
