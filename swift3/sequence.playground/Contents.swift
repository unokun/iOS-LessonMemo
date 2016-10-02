//: Playground - noun: a place where people can play

import UIKit
import Foundation

struct Countdown: Sequence, IteratorProtocol {
    var count: Int
    
    mutating func next() -> Int? {
        if count == 0 {
            return nil
        } else {
            defer { count -= 1 }
            return count
        }
    }
}

let threeToGo = Countdown(count: 3)
for i in threeToGo {
    print(i)
}

let values = sequence(first: 1) { $0 * 2}
for x in values {
    if (x > 10) {
        break
    }
    print(x)
}

let dates = sequence(state: 1) { (day: inout Int) -> Date? in
    defer {
        day += 1
    }
    let calendar = Calendar.current
    var components = calendar.dateComponents([.year, .month, .day], from: Date())
    components.day = day
    return calendar.date(from: components)
}
//for day in dates {
//    print(day)
//}
//for x in sequence(first: 0.1, next: { $0 * 2 }).prefix(while: { $0 < 4 }) {
//    // 0.1, 0.2, 0.4, 0.8, ...
//}

for x in 1...10 {
    print(x)
}
struct Fibonacci : Sequence {
    struct Iterator : IteratorProtocol {
        fileprivate var data = (0, 1)
        mutating func next() -> Int? {
            defer {
                data = (data.1, data.0 + data.1)
            }
            return data.1
        }
    }
    func makeIterator() -> Fibonacci.Iterator {
        return Iterator()
    }
}
let fibonacci = Fibonacci()
for x in fibonacci {
    if x > 100 {
        break
    }
    print(x)
}

let value: Int? = fibonacci.first { $0 > 100}
print(value)
//
// AnySequenceで作成
//
//let fibonacci = AnySequence { () -> AnyIterator<Int> in
//    var data = (0, 1)
//    return AnyIterator {
//        defer {
//            data = (data.1, data.0 + data.1)
//        }
//        return data.1
//    }
//}
//
// sequence(first:next:)で生成
//var previous2 = 0
//let fibonacci = sequence(first: 1) { previous1 in
//    defer {
//        previous2 = previous1
//    }
//    return previous1 + previous2
//}
//
// sequence(state: next:)で生成
//
//let fibonacci = sequence(state: (0, 1)) {
//    (state: inout(Int, Int)) -> Int? in
//    defer {
//        state = (state.1, state.0 + state.1)
//    }
//    return state.1
//}
//
//let value: Int? = fibonacci.first(where: { $0 > 100})
//print(value)
