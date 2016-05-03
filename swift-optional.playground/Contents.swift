//: Playground - noun: a place where people can play

// swift 2.1に仕様書
// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0
// iBook
// https://itunes.apple.com/us/book/swift-programming-language/id1002622538

// Qiita
// http://qiita.com/mishimay/items/75fb0958f33079ff0e8a

// optional
//var age:Int? = nil

var age:Int? = 25
// !を付けてunwrappする
print(age! + 1)

func method(age: Int?) {
    // 記述1
    // Swift 1で導入された文法
    // 記述2と同じ(シュガーシンタックス)
    // 注意)!をつけないでunwrapしている
    if let v = age {
        print("age is \(age)")
        print("age is \(v)")
    } else {
        print("age is nil")
    }
    // 記述2
    if (age == nil) {
        print("age is nil")
        return
    }
    let v = age!
    print("age is \(v)")
}
// 記述3
// Swift 2.1で導入されたキーワード(guard)
// guard 条件 else {
//    処理
// }
// Swift 2.1で導入されたキーワード(defer)
// defer {
//    処理
// }
func method2(age: Int?) {
    guard let v = age else {
        // guardの処理が失敗した場合
        print("age is nil")
        return
    }
    print("age is \(age)")
    print("age is \(v)")

    // Swift 2.1で導入されたキーワード(defer)
    defer {
        // 関数を抜ける前に行う処理
    }
}
method(nil)
method2(nil)

class Dog {
    func bark()->String {
        return "Wan!"
    }
}
var wrappedDog: Dog? = Dog()  // Optional 型
print(wrappedDog?.bark()) // -> Optional("Wan!")

func getString () -> String? {
    let rtStr :String? = "文字列"
    return rtStr
}

var mnth :Array<String?>? = ["Jan", "Feb"]
mnth?[0]!

var mnth2 :Array<String?>? = ["Jan", "Feb", "March"]
if var array = mnth2 {
    if let v = array[2] {
        print(v)
    }
}
//var mnth3 :Array<String?>? = ["Jan", "Feb", "March"]
mnth2![1]!

2
3
4

func strconcat(str1: String?, str2: String) -> String {
    guard let wStr1 = str1 else {
        return str2
    }
    defer {
        print("defer")
    }
    let result = wStr1 + str2
    
    return result
}
strconcat(nil, str2: "bbb")

func myfunc() {
    defer {
        print("defered")
    }
    print("Hello, World!")
}

myfunc()
