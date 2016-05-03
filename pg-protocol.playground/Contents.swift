//: Playground - noun: a place where people can play

import UIKit
// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html

// https://ez-net.jp/article/A0/BnzjGE5E/8aEhYW0KcVVF/

class Asia {
    
}

protocol KyotoProtocol {
    var name:String { get }
    func stopGlobalWarming()
}

// クラスとプロトコルの両方を同時に継承することができます。
class Japan:Asia, KyotoProtocol {
    // 実装が必要なプロパティ
    var name: String = ""
    
    // 実装が必要なメソッド
    func stopGlobalWarming() {
    
    }
}

// プロトコルを型としてインスタンスを変数に代入することができます。
var country:KyotoProtocol = Japan()


//　インスタンスがプロトコルを実装しているかどうかは
// is, as(ダウンキャスト)演算子を使ってチェックすることができます。
let japan: AnyObject = Japan()
if japan is protocol<KyotoProtocol> {
    print("japan is following KyotoProtocol.")
}
if let sub = japan as? KyotoProtocol {
    print("japan is following KyotoProtocol.")
}

// 実装が必須でないメソッドを持つプロトコルは、メソッドの前にoptionalキーワードを追加します。
// プロトコルには@objcキーワードが必要です。

@objc protocol OsakaProtocol {
    // 実装が必須でないメソッド
    optional func chargeCarbonTax()
    
}
// メソッドを実装していなくてもOKです。
class Osaka: OsakaProtocol {
    
}
// プロトコル準拠しているかどうかは、is、as演算子で同じようにチェックできます。
let osaka: AnyObject  = Osaka()
if osaka is protocol<OsakaProtocol> {
    print("osaka is following OsakaProtocol.")
}

class America {
    
}
// プロトコル準拠していないクラスはエラーになります。
//let country: KyotoProtocol = America()
