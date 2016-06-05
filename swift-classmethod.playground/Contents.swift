//: Playground - noun: a place where people can play

import UIKit

// 一般的なメソッド
// メソッド内でプロパティ値を使う場合にはインスタンス作成する必要がある。
class Person {
    var message = "message"
    func greet() {
        print(message)
    }
}

var p = Person()
p.greet()

//
// クラスメソッド
// 数学ライブラリなどのユーティリティで用いられることが多い。
class Util {
    class func message() {
        print("hello")
    }
}
Util.message()

// deletgate & protocol
// delegate
//  処理を委譲すること。
//  他のクラスが持っている機能を使うこと。
// protocol
//  インタフェース(機能)
//  メソッド(の宣言)が集まったもの
// 教科書の例
// 弁護士プロトコル
protocol LaywerLicense {
    func defend()
}

class Laywer: LaywerLicense {
    func defend() {
        print("異議あり!")
    }
}
// 被告
class Defender {
    // 弁護士に弁護を委譲
    // delegateが、Laywer型ではないことに注意
    var delegate: LaywerLicense?
    
    func defend() {
        guard let d = delegate else {
            return
        }
        d.defend()
    }
}
let taro = Defender()
taro.delegate = Laywer()
taro.defend()

// カメラアプリの場合
// UIImagePickerControllerクラスが利用クラスへ通知（コールバック）するために
// プロトコル(UIImagePickerControllerDelegate)を持つインスタンスを要求する。
// picker.delegate = self
// delegateが設定されていれば、メソッドを呼び出す。
// imagePickerController
