# `gdoc` 解釈ステップ

## 1. Document dump 形式

### 1.1. 概要

- .md, .adoc など、文書形式を隠蔽し、doc object model を抽出する。

- ファイル単位でのみ解釈を行う。
  - プロジェクトには複数の文書形式の異なるファイルが含まれており、それらを統一的に解釈する必要があるため、ここではファイル単位での解釈に専念する

### 1.2. 出力

- json による、doc object。

- 基本的に、解釈した１行毎のエレメントを出現順配列に保管する。

- 解釈対象は：
  1. ヘッダー / タイトル（ `#` ではじまる行 ）
  2. 表
  3. リスト
  4. パラグラフ（mdの行末空白や、adocの行末`+`を解消したもの）

- できれば gdoc オリジナルの解釈は加えないようにしたい。

### 1.3. サンプル

```json
{
  "Type" : "File",
  "Info" : {
    "Path" : "",
    "Name" : "",
    "Type" : "Markdown"
  },
  "Data" : [
    {
      "Type" : "Header",
      "Info" : {
        "Level" : 2
      },
      "Data" : {
        "Text" : "Requirements for Project Management Process",
        "Line" : 8, "RawText" : "## Requirements for Project Management Process"
      }
    },
    {
      "Type" : "Table",
      "Info" : {
        "Rows" : 2,
        "Cols" : 2,
        "Title" : ""
      },
      "Header" : [
        { "Data" : "",
          "Line" : 10, "RawData" : ""
        },
        { "Data" : "",
          "Line" : 10, "RawData" : ""
        }
      ],
      "Data" : [
        [
          { "Data" : "",
            "Line" : 10, "RawData" : ""
          },
          { "Data" : "",
            "Line" : 10, "RawData" : ""
          }
        ],
        [
          { "Data" : "",
            "Line" : 10, "RawData" : ""
          },
          { "Data" : "",
            "Line" : 10, "RawData" : ""
          }
        ]
      ]
    }
  ],
}
```

## 2. gdoc object dump 形式

### 1.1. 概要

- 複数ファイルをとりまとめ、単一の gdoc object へ変換したモデル。

- 各オブジェクトタイプ指定の解釈は行っていない、gdoc オリジナルの namespace（ヘッダーセクション）解釈、`[@Type ID]` 解釈のみを行ったもの。

- 解釈対象
  - 名前空間の重畳解釈（多重定義検出）
  - gdoc table の解釈、リストのインライン定義解釈など、gdoc エレメント化

- gdoc table type plugin のメカニズムを用意する

### 1.2. 出力

- json による、gdoc object。


### 1.3. サンプル


| @Reqt Id | Name | Description |
| -------- | ---- | ----------- |
| 1-gh000   | func requirement | some reqt
| | @trace  | @copy ASPICE.31.MAN3.BP3
| 2-gh000   | nonf requirement | other reqt
| | @trace  | @rifine SYRQ.FR.CR.3-gh000

| @Reqt Id | Name | Description |
| -------- | ---- | ----------- |
| 3-gh000   | func requirement | some reqt
| | @ trace  | @copy ASPICE.31.MAN3.BP3
| |         | @SatisfiedBy ASPICE.31.MAN3.BP3
| 4-gh000   | nonf requirement | other reqt
| | @ trace  | @rifine SYRQ.FR.CR.3-gh000


```json
{
  "SWAD" : {
    "PM" : {
      "REQ" : {
        "@Data" : [
          {
            "Type" : "@Reqt",
            "Data" : [
              {
                "Id" : "1-gh000",
                "Name" : "func requirement",
                "Description" : "some reqt",
                "trace" : "@copy ASPICE.31.MAN3.BP3"
              },
              {
                "Id" : "2-gh000",
                "Name" : "nonf requirement",
                "Description" : "some reqt",
                "trace" : "@rifine SYRQ.FR.CR.3-gh000"
              }
            ],
            "Type" : "Table",
            "Data" : [
              
            ]
          },
          {

          }
        ],
        "somedata": {

        }
      }
    }
  }
}
```

