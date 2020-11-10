# [@Ghost PMP] Project Master Plan

[@doc ghost 0.4, @docid PJIM.W.PP, @template ghost/process/templates/ProjectMasterPlan]

## Contents

1. [[@ PC] Project Charter](#1--pc-project-charter)
   - [1.1. Motivation](#12-motivation)
   - [1.2. Goals](#11-goals)
   - [1.5. Assumptions and Constraints](#15-assumptions-and-constraints)
   - [1.3. Scope and Completion criteria](#13-scope-and-lifecycle)
   - [1.4. Milestone schedule](#14-milestone-schedule)
   - [1.6. Resources and Costs](#16-resources-and-costs)
   - [1.7. Risks](#17-risks)
2. [@ PRA] Process Responsibility Assignment

<br>

## 1. [@PIM.PC] Project Charter

### 1.2. Prpose

- 自動運転自動車の市場進化・拡大に向け、より多く多様なソフトウェア開発企業の市場参入が求められている。
- その際、自動車メーカーによる機能安全規格対応・SOTIF対応など、安全性確保のためのプロセス構築が課題となる。
- 一般に先進的なソフトウェア技術開発を行う企業は大企業ではなく、自動車業界レベルの品質保証プロセスを保有していない。
- 本プロジェクトは、新規参入を目指す（大規模なSPEGをもたない）企業が自社向けソフトウェア開発プロセスを構築するための環境を提供する。

### 1.2. Goals

#### _Description_

- プロジェクトのゴールを定義する。
- 詳細な達成基準はプロジェクト活動を通じて別途定めるのが、プロジェクトの見積りに大きな影響を及ぼすものはここで確認しておく。

#### _Example_

- Automotive SPICE に対応可能で、Github やアジャイル開発指向な組込みソフトウェア開発プロセスを提供する。
- コア部分とアプリケーション部分を分離し、利用者の自社向けプロセス構築が容易になるようコア資産を充実させる。

### 1.3. Scope and Completion criteria

- 車載ECUに搭載される、ソフトウェア開発プロセスをカバーする。
- ハードウェアを含むシステムエンジニアリングに関しては、ソフトウェア要件抽出の拡張として一部をカバーする。
- Automotive SPICE 3.1 のPRMのうち、VDAスコープ＋αのプロセスを対象とする。
- MVPバージョンによる初期リリースにはじまり、継続的に機能拡張を行うものとし、プロジェクト終了時期を当面規定しない。
  - ここでのライフサイクルは主に寿命を扱う（いつまでをカバーすればよいか）

### 1.4. Milestone schedule

- 漸進的に開発を進めるが、スケジュールは現状未定とする。
- MVPリリース後、足場が安定したのちに次のスケジュールを検討する。

### 1.5. Assumptions and Constraints

- ソフトウェア開発のスタイルとして、アジャイルを前提する。
  - 新規性の高いソフトウェアにおいてWFモデルの採用は困難であり、且つSOTIFなど安全上の取組自体がイテレーションを前提しつつあることによる。
  - WF型を適用したい場合には、イテレーション数１としてプロセスを提供するものとする。
- 中央集権的なSPEGは存在しないか、あるいは新規性の高い技術開発であることから現場でのテーラーリングが頻発する組織を前提する。
  - つまり、現場にて理解容易であり、改変可能であるプロセステンプレートとする。
  - つまり、大きな予算も工数も投入することはできない。

### 1.6. Resources and Costs

- 当面個人での開発を続ける。

### 1.7. Risks

- 日程の縛りがないことから、特記すべきリスクなし。

<br>

## 2. [@PIM.RA] Process Responsibility Assignment

| @RACI-VS         | PIM | PM  | SWE | SQA | WPM | ISM | memo |
| --------         | :-: | :-: | :-: | :-: | :-: | :-: | ---- |
| Shuzo Tanaka     |  S  |  S  |     |  S  |     |     |
| Tsuyoshi Kodama  | R/A | R/A | C/S | R/A | C/S | C/S |
| Masayoshi Tanaka |     |     | R/A |

- [What's RACI-VS](https://en.wikipedia.org/wiki/Responsibility_assignment_matrix#RACI-VS)?
