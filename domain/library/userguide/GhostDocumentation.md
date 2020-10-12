# Ghost Documentation

## 1. Overview

### Document as a database

### Concepts

#### Markup

#### Layered Object

#### Object types

#### File Types

- Source file の扱いについて
  - doxygen に対応するのがよいか。

## 2. Identifire

### Format

#### Name

#### Version

#### Tags

### Versioning rule


## 3. Namespace

### Namespace Concept

### Section Header

- md / adoc のセクションを、階層化した情報グループとして扱うためのマークアップ

Rule.1 : Section = Information group

### Section Header

- md / adoc のヘッダー文字列の先頭に [ ] があり @ もしくは # を含む場合、gdoc はこれを Section Header と呼び、そのセクションに意味を与える。

Rule.2 : ヘッダー先頭の [] によりセクションヘッダーとして意味を付与できる。

```
### [@<TYPE> <SHORT_NAME>] <LONG_NAME> [<OPT>]
```

### Command

- [@ ] は、そのセクションがパッケージであることを表わす。
- パッケージは、名前空間として機能する。
- 複数の同一名パッケージは、名前空間がマージされる。

- `@` に続くコマンドが、そのパッケージに固有の意味を付与する。

1. package (default)


### Attribute

- Section Headerに `#` が含まれる場合、これに続く文字列をそのセクションの属性として扱う。

1. nest

### Import

1. [@import xxxxx] 名前空間のインポート

   - SysML と同じルールを採用する。


## 4. Object

### 4.1. Overview

- マークアップして、Object あるいは（Objectの）配列として扱う

### 4.2. Inline Object

### 4.3. Table

- 空行は無視する [[@ID.ID.ID-V000-S.TAG]]()

## 5. Types and Plugins

### 5.1. Plugin Concept

### 5.2. Base Type

- SysMLの、モデルエレメント間の "関連" を基本ルールとして持つ。
- これにより、プラグイン同士を接続することを可能にする。

### 5.3. Default Type


## 6. Type - SysML

### 6.1. Requirement diagram

#### Requirement Table

| @reqt | Name   | Description |
| ----- | ------ | ----------- |
|       | @trace | @refine MAN.3
| OC1 | Outcome1 | プロジェクトの作業範囲が定義されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC1
| OC2 | Outcome2 | 利用可能なリソースおよび制約内でプロジェクト目標達成の実現可能性が評価されている。
|     | @trace   | @copy ASPICE.3.1.MAN3.OC2

#### USDM

| @USDM | Name | Description |
| ----- | ---- | ----------- |
| BP1   | 作業範囲の定義 | プロジェクトの目標、モチベーション、および境界を識別する。
|       | @trace       | @deriveReqt OC1
|       | @trace       | @copy ASPICE.3.1.MAN3.BP1
| @spec | BP1.1        | 上位プロジェクトおよび顧客から情報を収集し、プロジェクト計画書に記述する。
|       | @satisfiedBy | GP.PM::Initiate
| @spec | BP1.2        | プロジェクト計画書に、プロジェクトの目的、目標、境界を記述する。
|       | @rationale   | 日本語文書において "モチベーション" は "目的" として記述されることが多いためこれに変更した。
|       | @satisfiedBy | GP.WP::ProjectPlan
| BP2   | プロジェクトのライフサイクルの定義 | プロジェクトの範囲、背景、規模、および複雑性に適したプロジェクトのライフサイクルを定義する。
|       | @trace       | @deriveReqt OC2
|       | @note 1      | 一般的にこのプラクティスは、プロジェクトライフサイクルおよび顧客の開発プロセスが互いに一貫していることを意図する。
| @spec | BP2.1        | プロジェクトライフサイクルに影響を与える上位プロジェクト情報・顧客情報を収集し、プロジェクトライフサイクルをプロジェクト計画書に記述する。
|       | @satisfiedBy | GP.PM::Initiate


#### Test

### 6.2. Block definition diagram

#### Block

#### Interface

##### Interface definition table

| @interface | Name | Description |
| ---------- | ---- | ----------- |
| INIT       | Initiation | Project Initiation Service
| @operation | Initiate   | Project Initiation Process
|
| PLAN       | Planning   | Project Planning Service
| @operation | Plan
| @operation | Estimate
|
| EXEC       | 
| @operation | Schedule
|
| MCON       | 
| @operation | Monitor
|
| CLOS       | 
| @operation | 

##### Operation definition table

| @operation | Name | Description |
| ---------- | ---- | ----------- |
| INIT           | Initiate | Project Initiation Process
| @parameter     | Initial Project Plan : PD.WP::Project Plan | プロジェクトの開始処理
| @parameter     | Initial Project Plan : PD.WP::Project Plan | プロジェクトの開始処理
| @returnType    | PD.WP::Project Plan | 


##### Reception definition table


