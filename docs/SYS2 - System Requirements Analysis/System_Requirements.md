# [@ SYRQ] Ghost System requirements

## Overview

![../puml/System_Requirements_Overview.puml](./fig/System_Requirements_Overview.png)

## [@ G] Goal

### Main Goal

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| G1-gh000      | Main Requirement | 高信頼性ソフトウェア開発に利用可能で導入容易な開発テンプレートを提供すること。
| | @Rationale  | プロセス改善に際し、現状ベースではなく新規構築したいニーズに応えるため。
| | @Trace      | // Stakeholder Requirements の項目を参照する

### [#nest G1] Sub Goals

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| G1.1-gh000    | Usability | シンプルで軽量、変更駆動開発による、agile との親和性があること
| | @Rationale  |
| | @Trace      |
| G1.2-gh000    | Quality Assurance | 車載機器開発に対応しうる、品質保証可能なプロセスであること
| | @Rationale  |
| | @Trace      |
| G1.3-gh000    | Cost | 特別なツールやインフラを要せず、学習コストが低いこと
| | @Rationale  |
| | @Trace      |
| G1.4-gh000    | Infrastructure | Gitとテキスト文書、Jiraなどポピュラーなツールを利用すること
| | @Rationale  |
| | @Trace      |

### Context

### Assumption

### Justification

## [@ S] Strategy

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| S1-gh000      | \<\<designConstraint>><br>Infrastructure | Git hosting serviceとして、Github、GitLab、Bitbucket、backlog を想定する
| | @Rationale  |
| | @Trace      | G.G1.3-gh000, G.G1.4-gh000
| S2-gh000      | \<\<designConstraint>><br>Infrastructure | Ticket systemとして、Github Issue、GitLab Issue、Jira、backlog を想定する
| | @Rationale  |
| | @Trace      | G.G1.1-gh000, G.G1.3-gh000, G.G1.4-gh000
| S3-gh000      | \<\<designConstraint>><br>Infrastructure | 設計文書として、Markdown と Asciidoc を想定する
| | @Rationale  |
| | @Trace      | G.G1.1-gh000, G.G1.3-gh000
| S4-gh000      | \<\<designConstraint>><br>Process | Automotive SPICE 3.1 を参照し、ISO-26262、SOTIF などとの接続性を考慮する
| | @Rationale  |
| | @Trace      | G.G1.2-gh000

## [@ F] Functional Requirement

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| F1-gh000      | \<\<functionalRequirement>><br>Change driven | 変更要求を起点に短サイクルで開発作業が実行される、変更駆動型に実装したA-SPICEプロセスであること
| | @Rationale  |
| | @Trace      | G.G1.1-gh000, S.S4-gh000
| F2-gh000      | \<\<functionalRequirement>><br>Simple interface | 上位システム開発マスタープラン、\n上位プロジェクトマネジメントと、\n素直に接続可能であること
| | @Rationale  |
| | @Trace      | G.G1.2-gh000, S.S4-gh000
| F3-gh000      | \<\<functionalRequirement>><br>Scrum | Scrum 運用も可能な\n内部プロセスであること
| | @Rationale  |
| | @Trace      | G.G1.1-gh000, S.S2-gh000

### [@ #nest F1] Change driven development process

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| I1-gh000      | 開発依頼 | 委託元組織は、開発依頼を発行できる
| | @Rationale  |
| | @Trace      |
| I2-gh000      | ステータス情報取得 | ステークホルダーは、開発状況に関する情報を取得できる
| | @Rationale  |
| | @Trace      |
| I3-gh000      | サンプル要求 | ステークホルダーは、検証用サンプルを受け取ることができる
| | @Rationale  |
| | @Trace      |
| I4-gh000      | 変更依頼 | ステークホルダーは、変更要求を発行できる
| | @Rationale  |
| | @Trace      |
| I5-gh000      | 不具合指摘 | ステークホルダーは、不具合を指摘し改修を依頼することができる
| | @Rationale  |
| | @Trace      |
| I6-gh000      | リリース要求 | 委託元組織は、製品リリースを要求できる
| | @Rationale  |
| | @Trace      |

### [@ #nest F2] Simple interface

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| I1-gh000      | \<\<interfaceRequirement>><br>開発プラン整合 | Engineering Sample, Pilot Run など顧客組織のプランと内部プランとを接続できること
| | @Rationale  |
| | @Trace      |
| I1-gh000      | \<\<interfaceRequirement>><br>スケジュール整合 | マスタープランに基づく到達予測が可能であること
| | @Rationale  |
| | @Trace      |

### [@ #nest F3] Scrum

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| R1-gh000      | Scrum コンセプトとのマッピング | 内部プロセスは、Scrum のコンセプトへ対応付け可能であり、Scrum 運用を容易に実現可能であること
| | @Rationale  |
| | @Trace      |

## [@ C] Cross-Cutting Concerns

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| C1-gh000      | Usability | テキストベースで理解可能\nであるよう、構成規模および用語\n辞書規模ができるだけ小さいこと
| | @Rationale  |
| | @Trace      | S.S1-gh000, S.S3-gh000

## [@ N] Non-Functional Requirement

| @ReqtID | Name | Text |
| ------- | ---- | ---- |
| N1-gh000      | \<\<nonFunctionalRequirement>><br>A-SPICE Level3 | Automotive SPICE 3.1 Level 3\n相当のプロセスであること
| | @Rationale  |
| | @Trace      | S.S4-gh000
| N2-gh000      | \<\<nonFunctionalRequirement>><br>A-SPICE VDA Scope | Automotive SPICE の\nVDA Scope をカバーすること
| | @Rationale  |
| | @Trace      | S.S4-gh000

## [@ D] Domain Knowledge

