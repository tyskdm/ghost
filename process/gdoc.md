# Ghost Documentation

## Data model

GhostDocument is a data container.

1. Ghost document は、そのコンテンツを json に吐き出すことができます。
2. つまりコンテンツは、json で表現可能なオブジェクトデータです。

### Section

- Section is Namespace.
- A Section Starts with a Section Header.
- Section Header starts with some '#' charctors.
- Section Header String can contain link attribute --> `[string](link)`

ライブラリとしてドキュメントを再利用することを考えると、ファイルセットを特定の名前空間の中に閉じ込めたい。
可能か？

[@import path as name]

で可能だろうか。


## 識別子

識別子 = ID-Version-Tag


## Command

| Command | Description |
| ------- | ----------- |
| rename  | ID 文字列の置換を行う。`ren SWRQ.SWE.FR.UC UCD` のように、階層位置を特定して最下層の名前のみを変更する（FR の下には他の名前も含まれるため、副作用を避ける）。
| ls      | rename と併用するためのコマンド。tree で足りるか？
