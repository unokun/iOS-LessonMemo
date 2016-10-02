//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var currentValue = 0

let closure = { () -> Int in
    currentValue += 1
    return currentValue
}

closure()
closure()
