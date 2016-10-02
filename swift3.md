# Swift 3.0変更点
## API Design Guidelines
* Swift API第度ライン(SE-0023)
* 命名規則へのガイドライン適用(SE-0059)
* 標準ライブラリへの適用(SE-0006)
* Foundationへの適用(SE-0086)

### API Design Guidelines
[API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)


## 言語思想に関する変更
* 戻り値を使わないと警告に(SE-0047)
* Imput Unwrapped Optional廃止へ(SE--0054)
* 小数点プロトコル(SE-0067)
* Foundationの値型(SE-0069)
* nilポインター表現(SE-0055)
* コレクションの再設計(SE-0065)
* イテレーターでのnil保証(SE-0052)
* BooleanTypeプロトコルの廃止(SE-0109)

## 文法に関する変更
* 演算子セクションでのコメント(SE-0037)
* 引数リストの括弧を必須に(SE-0066)
* 引数ラベル名の規則を統一(SE-0046)
* 属性引数のEqualをColonに変更(SE-0040)
* メンバー参照で使える予約語(SE-0071)
* 列挙子型内での列挙子表記(SE-0036)
* 規定値を持つ引数の順番を固定(SE-0060)

### 属性引数のEqualをColonに変更
[The Swift Programming Language (Swift 3) Attributes](https://developer.apple.com/library/prerelease/content/documentation/Swift/Conceptual/Swift_Programming_Language/Attributes.html)
```swift
/ First release
protocol MyProtocol {
    // protocol definition
}
// Subsequent release renames MyProtocol
protocol MyRenamedProtocol {
    // protocol definition
}
 
@available(*, unavailable, renamed: "MyRenamedProtocol")
typealias MyProtocol = MyRenamedProtocol
```

## プロトコル表記に関する変更
* protocolo<A,B>を演算子で表現(SE-0095)
* LiteralConvertibleの名称変更(SE-0115)

## 型に関する変更
* 演算子を型が実装(SE-0091)
* @noescapeと@autoclosureを移動(SE-0049)
* 型に対してinputを定義(SE-0031)
* UnmanagedはSwiftポインタを扱う(SE-0014)

## 言語構文の削除
* Cスタイルのforループの削除(SE-0007)
* 演算子++と--の削除(SE-0004)
* カリー化関数構文の削除(SE-0002)
* 引数リストからvarを削除(SE-0003)
* 引数リストからletを削除(SE-0053)
* タプルスプラットの廃止(SE-0029)

## 文法に関する機能追加
* ジェネリックな型エイリアス(SE-0048)
* caseでの複数パターンマッチ(SE-0043)

# 型に関する機能追加
* シーケンスから要素を見つけて取得(SE-0032)
* シーケンスを作る関数(SE-0094)
* Optional向けflapMapを遅延可能に(SE-0008)
* Sliceから元のシーケンスを参照(SE-0093)

##実行環境に関する変更
* デバッグ識別子のモダン化(SE-0028)
* #line識別子の曖昧性を解消(SE-0034)
* Playgroundリテラルのモダン化(SE-0039)


## 言語仕様
* 可視化スコープ
* クロージャーの生存範囲(@noescape)(SE-0035)

### 可視化スコープ
|キーワード|可視性|
|:-------|:----|
|public|モジュールの外部まで可視|
|internal|モジュールの内部だけに可視|
|fileprivate|そのファイルの中だけに可視|
|private|現在の定義の中だけに可視|

## Swift Package Manager

## 参考
* [Swift 3.0 で変わったところ - 厳選 13 項目 (slide share) ](http://www.slideshare.net/tomohirokumagai54/swift-30-13-loveswift-cswift)
* [Swift 3 で新しくなったところ - 表面から見えにくいところを中心に紹介 (slide share)](http://www.slideshare.net/tomohirokumagai54/swift-3-isaocorp)
* [NS Prefix - そこから見渡す Swift 3 の景色 (slide share) ](http://www.slideshare.net/tomohirokumagai54/ns-prefix-swift-3-startupmobile)
* [Swift 3 を書くときに知っておきたい API デザインガイドライン](http://www.slideshare.net/tomohirokumagai54/swift-3-api-loveswift-akibaswift)

* [Swift 3.0 をいまから学ぶ Swift Evolution ウォッチング](http://developer.hatenastaff.com/entry/learn-about-swift-3-point-0-from-swift-evolution)
* [Swift3の移行へ向けて予習するために（日本語話者向け）](http://qiita.com/touyoubuntu/items/acfbc9fb0d11703f4811)
* [Swift 3.0のRangeまとめ](http://qiita.com/notohiro/items/f546a962097fc9763376)
