// 繰り返し構文
//for 変数名 in 開始値...終了値 {
//    処理
//}
//var sum = 0
//for i in 1...10 {
//    sum += i
//}
for i in 1...5 {
    print(i)
}
for i in 1..<5 {
    print(i)
}
let base = 3
var answer = 1
for _ in 1...5 {
    answer *= base
}

//var week = ["日", "月", "火", "水", "木", "金", "土"]
//for day in week {
//    print(day)
//}
//
//var sum = 0
//var expense = ["交通費": 15000, "宿泊費": 10000, "日当": 2000]
//for (key, value) in expense {
//    sum += value;
//}
//print("出張費: \(sum)円")

//for char in "abcdef".characters {
//    print(char)
//}
//for char in "こんにちは".characters {
//    print(char)
//}

// for
// Cスタイルのループは非奨励
for var index = 0; index < 3; ++index {
    print("index is \(index)")
}


//while
var index = 0;
while index < 10 {
    index += 1;
}
