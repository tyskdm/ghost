# [@ WPM] Workproduct Management

## 1. Purpose

| @ID | Name | Description |
| :-: | ---- | ----------- |
| P1  | Purpose | Work
|     | @trace  | @copy SWDD.SWET.WPM.OC.1 

## 2. Outcomes

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 | Outcome | 
|     | @trace  | @copy SWDD.SWET.WPM.OC.1 

## 3. Work products

| @ID | Name | Description |
| :-: | ---- | ----------- |
| WP1 | Workproduct Management List | 
| WP2 | Merge Acceptance Criteria | 
| WP3 | Branching Strategy | 

### 3.1. Work product management plan

#### 3.1.1. Configuration management plan

##### 08-04 構成管理計画書

構成管理プロセスの目的は、プロセスまたはプロジェクトのすべての作業成果物の完整性を確立し、維持し、影響を受ける関係者で利用可能にすることである。

- 構成品目に対する変更を制御するための手順を定義または言及している
  - branching and merge acceptance strategy
- 構成管理活動のステータスを決定するために使用する測定項目を定義している
- 構成管理監査基準を定義している
- 構成管理部門によって承認されている
- 構成ライブラリツールまたは仕組みを識別している
- 制御された品目のステータスおよび履歴を示した管理記録およびステータス報告が含まれている
- 構成管理ライブラリの場所およびアクセスの仕組みを明示している
- 明示された保管、取り扱い、および納入（アーカイブおよび復旧）の仕組み

##### 19-10 検証戦略

検証プロセスの目的は、プロセスまたはプロジェクトの各作業成果物が、明記された要件を適切に反映していることを確認することである。

- 検証手法、技法、およびツール
- 検証対象の作業成果物またはプロセス
- 検証に対する独立性の度合い
- 上記活動の実施スケジュール
- 満足すべきニーズを識別している
- ニーズを満足するために、選択肢およびアプローチを確立している
- 戦略的な選択肢を評価する対象のための評価基準を確立している
- あらゆる制約／リスク、およびそれらの対処方法を識別している
- 検証終了基準
- 検証開始、中断および再開の基準


## 4. Activity

### [@ ACT1] Merge Request

MergeRequest(TICKET_ID, FROM_B, TO_B)

#### Parameters

| @ID | Name | Type | Description |
| :-: | ---- | ---- | ----------- |
| PA1 | TICKET_ID | ITS::Ticket_id | 
| PA2 | FROM_B    | GHS::Branch    | 
| PA3 | TO_B      | GHS::branch    | 

#### Preconditions

| @ID | Name | Description |
| :-: | ---- | ----------- |
| PC1 | TICKET | 
| PC2 | FROM   | 

#### Tasks

| @ID | Name | Description |
| :-: | ---- | ----------- |
| T2  | マージチェックリストの取得 | マージ先ブランチ（TO_B）の受入れチェックリストを取得する
| T3  | セルフチェック | 受入れチェックリストに基づいて自己チェックを行い、結果を集約する
| T4  | プルリクエスト発行 | 集約したセルフチェック結果を添付し（INFO）、プルリクエストを発行する<br>GHS::PullRequest(TICKET_ID, FROM_B, TO_B, INFO)

#### Completion criteria

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 |      | 
| CC2 |      | 

### [@ ACT2] 

MergeRequest(ticket TICKET, branch FROM_B, branch TO_B)

#### Parameters

| @ID | Name | Type | Description |
| :-: | ---- | ---- | ----------- |
| PA1  |  |  | 
| PA2  |  |  | 
| PA3  |  |  | 

#### Preconditions

| @ID | Name | Description |
| :-: | ---- | ----------- |
| PC1 |  | 
| PC2 |  | 

#### Tasks

| @ID | Name | Description |
| :-: | ---- | ----------- |
| T1  |  | 
|     | @note | 
| T2  |  | 
| T3  |  | 
| T4  |  | 

#### Completion criteria

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 |  | 
| CC2 |  | 


### [@ ACT3] 

MergeRequest(ticket TICKET, branch FROM_B, branch TO_B)

#### Parameters

| @ID | Name | Type | Description |
| :-: | ---- | ---- | ----------- |
| PA1  |  |  | 
| PA2  |  |  | 
| PA3  |  |  | 

#### Preconditions

| @ID | Name | Description |
| :-: | ---- | ----------- |
| PC1 |  | 
| PC2 |  | 

#### Tasks

| @ID | Name | Description |
| :-: | ---- | ----------- |
| T1  |  | 
|     | @note | 
| T2  |  | 
| T3  |  | 
| T4  |  | 

#### Completion criteria

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 |  | 
| CC2 |  | 


### [@ ACT4] 

MergeRequest(ticket TICKET, branch FROM_B, branch TO_B)

#### Parameters

| @ID | Name | Type | Description |
| :-: | ---- | ---- | ----------- |
| PA1  |  |  | 
| PA2  |  |  | 
| PA3  |  |  | 

#### Preconditions

| @ID | Name | Description |
| :-: | ---- | ----------- |
| PC1 |  | 
| PC2 |  | 

#### Tasks

| @ID | Name | Description |
| :-: | ---- | ----------- |
| T1  |  | 
|     | @note | 
| T2  |  | 
| T3  |  | 
| T4  |  | 

#### Completion criteria

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 |  | 
| CC2 |  | 


### [@ ACT5] 

MergeRequest(ticket TICKET, branch FROM_B, branch TO_B)

#### Parameters

| @ID | Name | Type | Description |
| :-: | ---- | ---- | ----------- |
| PA1  |  |  | 
| PA2  |  |  | 
| PA3  |  |  | 

#### Preconditions

| @ID | Name | Description |
| :-: | ---- | ----------- |
| PC1 |  | 
| PC2 |  | 

#### Tasks

| @ID | Name | Description |
| :-: | ---- | ----------- |
| T1  |  | 
|     | @note | 
| T2  |  | 
| T3  |  | 
| T4  |  | 

#### Completion criteria

| @ID | Name | Description |
| :-: | ---- | ----------- |
| CC1 |  | 
| CC2 |  | 
