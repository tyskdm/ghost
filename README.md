# Ghost

**G**it**H**ub / **G**it-**H**osting-service **O**riented **S**PICEE **T**emplates.

Ghost is software development process templates for embedded software industry.
In particular, it is designed for the automotive industry by adopting Automotive SPICE.

Ghostは、組み込みソフトウェア業界向けのソフトウェア開発プロセスのテンプレートです。
特にAutomotive SPICEを採用することで、自動車業界向けに設計されています。

## TOC <!-- omit in toc -->

- [1. Version and Stability](#1-version-and-stability)
- [2. Motivation](#2-motivation)
- [3. Focuses](#3-focuses)
- [4. Ghost Process Architecture](#4-ghost-process-architecture)
  - [4.1. Internal Architecture](#41-internal-architecture)
    - [4.1.1. Application layer](#411-application-layer)
    - [4.1.2. Middlware layer](#412-middlware-layer)
    - [4.1.3. Tool Abstraction layer](#413-tool-abstraction-layer)
  - [4.2. External Architecture](#42-external-architecture)
- [5. How to get started](#5-how-to-get-started)
- [6. More about Ghost](#6-more-about-ghost)

## 1. Version and Stability

| Version | Dirty prototype R1 |
| ------- | ------------------ |
| Stability | [Stability: 1 - Experimental](https://nodejs.org/api/documentation.html#documentation_stability_index)

| Component | Stability | Memo |
| --------- | --------- | ---- |
| [Project Integration Management](process/ProjectIntegrationManagement.md) | (1) Experimental | プロジェクト全体のライフサイクルはこれでだいたい読み取れると思う。
| [Project Management](process/ProjectManagement.md) | (1) Experimental | 記述中。Initiate()、Plan()のみ記載あり
| [Software Engineering](process/SoftwareEngineering.md) | (1) Experimental | 記述中。Initiate()、Plan()のみ記載あり
| [Software Quality Assurance](process/SoftwareQualityAssurance.md) | (1) Experimental | 記述中。Initiate()、Plan()のみ記載あり
| [Issue Management](process/IssueManagement.md) | (1) Experimental | 本体＋IssueTypeプラグインによる構成。本体はコンセプトは書ききってみたので読み取れるか。プラグインは、変更依頼管理のみ。ざくっと書いてある。
| [Work product Management](process/WorkproductManagement.md) | (1) Experimental | これがたぶん一番大きなプロセスになる。それなりに書ききってみた。

<br>

## 2. Motivation

小さな企業あるいは小さなソフトウェア開発チームが、自動車業界やロボット業界に参入する機会が増えています。
それら企業・チームには、ベースになる定義済みプロセスが存在しないか部分的であることが多く、０からプロセスの策定をはじめることも少なくありません。

Ghostは、そうした小さなチームがソフトウェア開発プロセスを策定する際に、ベースとして使えるプロセステンプレートを提供することを目的としています。

<br>

## 3. Focuses

次の３点にフォーカスします。

1. Git Hosting service Oriented

   - ウォーターフォール全盛だったころ各社の開発プロセスの実体は本当にバラバラでしたが、GitHubを多くのエンジニアが使うようになってからGit Hosting service + Issue Tracking Service + CI/CDなどによる開発プロセスが多く提案され、特に構成管理や課題管理などのいわゆるサポートプロセスはかなり似た形に落ち着くことが多くなっています。
   - Ghostは、それらGitHub以降Git Hosting serviceを中心に発展したコミュニティ発のプラクティスをベースにした、軽量なプロセスを目指します。

2. SPICEE

   - Automotive SPICE(Software Process Improvement and Capability dEtermination)を、プロセスへの要件として参照しています。
   - 機能安全規格や自動運転ならSOTIFなどへ対応が必要になったときに「困らない程度に足場固めを済ませておく」ことを目指します。

3. Templates

   - Ghostは、多くの企業にとっては非競争領域であるサポートプロセス群をミドルウェアレイヤに配置し、競争力の源泉であるソフトウェアエンジニアリング、品質保証、プロジェクトマネジメントの各プロセスをアプリケーションレイヤに配しています。
   - そしてこれらアプリケーションをスケルトンとプラグインに分離したテンプレートを提供することで、各社が固有の技術資産としてのプロセス（プラグイン部分）を蓄積しやすくなることを目指しています。

<br>

## 4. Ghost Process Architecture

### 4.1. Internal Architecture

なにはともあれ。

- [ ] あとでもっと見やすい図に差替える

| ![[@fig:puml PUML.README::]](process/README/Ghost_Process_Orverview.png) |
| :-: |
| fig.4.1 Internal architecture

- 図中のScrumは例です。
  必ずしもScrumを前提していません。

#### 4.1.1. Application layer

ソフトウェア開発プロセスへの要件はいろいろ雑多にありますが、ソフトウェア開発チームにとってのアプリケーションは以下の３つです。

1. [Software Engineering](process/SoftwareEngineering.md)
2. [Software Quality Assurance](process/SoftwareQualityAssurance.md)
3. [Project Management](process/ProjectManagement.md)

ソフトウェアを開発し(1)、その品質を保証して(2)、プロジェクトゴールへ到達します(3)。

Ghostは各アプリケーションのスケルトンとプラグインから構成され、開発チームが固有のプラグインを開発することで技術的資産として蓄積されることを想定しています。

上記に加えて、これらアプリケーションを全体統括する`main.c`に相当する以下のプロセスがあります。
プロセスがどんな起動～終結シーケンスをたどるのかはこれを見てください。

- [Project Integration Management](process/ProjectIntegrationManagement.md#41-activity-main)

  - main.c による起動～終結シーケンスとプロジェクトマネジメントによるタスクスケジューリングは別なのでそれは読み取れないはず。いずれ説明加える。→ いまのところ、Issue managementプロセスのコンセプトから読み解いてください。

#### 4.1.2. Middlware layer

1. [Issue Management](process/IssueManagement.md)
2. [Work product Management](process/WorkproductManagement.md)

Issue managementによりプロジェクト課題と活動を管理し、Work product managementにより活動から生み出された作業成果物を管理します。

- この２つが、Ghostのコアになる技術コンセプト（出来るだけ手抜きをしつつA-SPICE要件をクリアする）の実装です。

#### 4.1.3. Tool Abstraction layer

Git hosting serviceやIssue tracking serviceを抽象化するプラグインレイヤです。

- まだ書いてません。

### 4.2. External Architecture

| ![@fig:puml PUML.README::](domain/architecture/docs/SYS2%20-%20System%20Requirements%20Analysis/fig/User_Scenario.png) |
| :-: |
| fig.4.2 User Scenario

Ghost processは、図中のSoftware Engineering teamを対象としています。

- 図中のOther stakeholder teamsは、セールス部署やシステム開発部署、ハードウェア開発部署を想定しています。
  プロジェクト全体の提案書提出や契約合意、システム開発についてはそれらのチームで行われます。
- 開発部署からの独立性を要求されるソフトウェア品質保証活動のために、Software QA teamを想定します。

通常システム開発部署からソフトウェア要件が提供され、ハードウェア開発部署から制約事項などが提供されますが、ソフトウェア要件の詳細やシステムインテグレートに伴う仕様調整はAcquirer（顧客など調達者）と直接やり取りすることが多くあります。

また、自動運転システムやロボット制御システムなど高度な統合制御システムではイテレーティブな開発が前提となり、そのためソフトウェアへの要求追加や変更要求がシステム開発の収束まで続きます。

このためGhostでは、ソフトウェア要件（Requirements）はAcquirerから継続的にやってくることを前提し、これに対してSftware Engineering teamはEngineering Sampleを継続的に提供し、その結果として次の要件（Requirements）あるいはインシデント（incidents、不具合・問題など）が継続的にやってくることを想定しています。

- 社内システム統合部署との関係も同じですが、図中にはAcquirerとの関係のみ表現しています。

<br>

## 5. How to get started

<br>

## 6. More about Ghost

<br>

^ [top](#ghost)
