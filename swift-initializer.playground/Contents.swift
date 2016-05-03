//: Playground - noun: a place where people can play

import UIKit


class IPhone {
    var language:String
    var passcode: String
//    init(language: String, andPassword: String) {
//        self.language = language
//        self.passcode = andPassword
//    }
    init() {
                self.language = ""
                self.passcode = ""
        
    }
}

//var iphone = IPhone(language: "ja", andPassword: "password")

class Square {
    var width: Int
    var height: Int

    // 外部引数を書かない場合、外部引数名＝内部引数名となる
    //    init(width: Int, height: Int) {
    //        self.width = width
    //        self.height = height
    //    }
    // 外部引数名をかく場合
    //    init(width w: Int, height h: Int) {
    //        self.width = w
    //        self.height = h
    //    }
    // 外部引数をアンダースコア(_)にすると引き数名を省略できる
    init(_ width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    func calcArea() -> Int {
        return self.width * self.height
    }
    
}
//var square = Square(width: 3, height: 4)
var square = Square(3, height: 4)
square.calcArea()

/*
class Person {
    var name = ""
    
    init() {
        
    }
    
    init(name: String) {
        self.name = name
    }
    func greeting() {
        print("My nam is \(name).")
    }
}

var satoh = Person()
satoh.name = "Satoh"
satoh.greeting()

var suzuki = Person(name: "suzuki")
suzuki.greeting()
*/