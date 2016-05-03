//: Playground - noun: a place where people can play
import Foundation

// autoclosure
func f(@autoclosure pred: () -> Bool) {
    if pred() {
        print("It's true")
    }
}
//f({2 > 1})
f(2 > 1)


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversed = names.sort(backwards)

// closure構文
//    { (parameters) -> return type in
//        statements
//}

reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversed = names.sort( { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversed)

// 型推論
reversed = names.sort( { s1, s2 in return s1 > s2 } )
print(reversed)

reversed = names.sort( { $0 > $1 } )
print(reversed)

reversed = names.sort(>)
print(reversed)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}
// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]

// 
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementByTen2 = makeIncrementer(forIncrement: 10)
incrementByTen2()


@objc protocol KyotoProtocol {
    func stopGlobalWarming()
    optional func chargeCarbonTax()
}

class Japan: KyotoProtocol {
    @objc func stopGlobalWarming() {
        print("")
    }
    
}
enum Week {
    case Monday
    
}
