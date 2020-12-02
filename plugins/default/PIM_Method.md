# [@Ghost PM] Ghost default PIM Plugin

[@doctype ghost 0.4]

## 1. Description

Ghost process を初めて利用するチーム向けの、シンプルなプロジェクト統合マネジメントプラグイン。

<br>

## 2. PROCESS ROLES

- 追加ロール定義なし

<br>

## 3. WORK PRODUCTS

### 3.1. Project Master Plan

| @id | Name | Description |
| --- | ---- | ----------- |
| PMP     | ProjectMasterPlan | プロジェクト基本計画書。プロジェクトインスタンスのルート文書となる。以下の各計画関連書類をまとめたもので、プロジェクト内各所からアクセスされるグローバル構造体。
| _@part_ | PIM.PC | Project Charter
| _@part_ | PIM.SH | Project Stakeholders
| _@template_ | [プロジェクト基本計画書テンプレート](templates/ProjectMasterPlan.md) |

<br>

## 4. ACTIVITIES

### 4.1. [@activity] Initiate

#### _[@ T1]_ プロジェクトの定義

| @id | Name | Description |
| :-: | ---- | ----------- |
| T1  | Define the project | プロジェクトを定義する。プロジェクト基本計画書を新規作成し、初期段階のプロジェクト概要計画情報(E1)の内容をもとに以下のパートを策定する。<br>1. PIM.PC : Project charter<br>2. PIM.SH : Project Stakeholders | PM

このdefaultプラグインは、プロジェクト基本計画書のテンプレートを用意している。
文書中のプロジェクト憲章、ステークホルダーのパートを記載する。

- [プロジェクト基本計画書テンプレート](templates/ProjectMasterPlan.md)

1. Project charter

   プロジェクト憲章は、プロジェクトの起点となる。
   顧客との開発契約書に記載されるか添付されるレベルの合意事項となり、プロジェクト期間中の判断根拠として常に参照される。

2. Project Stakeholders

   主要なプロジェクト利害関係者のリスト。
   初期においてはプロジェクト基本計画策定のための情報取得先となり、開発期間中においては情報共有先となる。

##### Guide

上記の内容はこのタイミングで固定可能なものではなく、プロジェクトプランおよび全プロジェクト期間を通じて調整される。
SWE, SQA, PM などの各概要計画策定中、プランニング中に不整合が生じた場合にも、都度修正を行う。
まずはプロジェクト初期計画策定の起点となるよう、記載できることを記載する。

<br>

#### _[@D] DELIVERABLES_

##### _[@Q] QUALITY RECORDS_
