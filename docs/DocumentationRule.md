# Ghost Documentation rule

## Section Header Notation

- md / adoc のセクションを、階層化した情報グループとして扱う。

Rule.1 : Section = Information group

### Section Header

- md / adoc のヘッダー文字列の先頭に [ ] があり @ もしくは # を含む場合、gdoc はこれを Section Header と呼び、そのセクションに意味を与える。

Rule.2 : ヘッダー先頭の [] によりセクションヘッダーとして意味を付与できる。

### Command

- [@ ] は、そのセクションがパッケージであることを表わす。
- パッケージは、名前空間として機能する。
- 複数の同一名パッケージは、名前空間がマージされる。

- `@` に続くコマンドが、そのパッケージに固有の意味を付与する。

1. package (default)


### Attribute

- Section Headerに `#` が含まれる場合、これに続く文字列をそのセクションの属性として扱う。

1. nest


## Inline Notation

1. [@import xxxxx] 名前空間のインポート

   - SysML と同じルールを採用する。

