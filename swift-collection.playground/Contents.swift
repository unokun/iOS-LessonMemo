

// 配列
// 一覧表示
func printTodos(todos: [String]) {
    for task in todos {
        print(task)
    }
    
}
var todos = ["ジョギングをする", "掃除をする", "予習をする"]
// 要素へのアクセス
todos[0]
//todos.popLast()

for task in todos {
    print(task)
}
for index in 0..<todos.count {
    print(todos[index])
}
// Cスタイルのループは、swift 2.2より非奨励
for var i = 0; i < todos.count; i++ {
    print(todos[i])
}
// 追加
todos.append("昼寝をする")
todos += ["ご飯を食べる"]

// 削除
todos.removeAtIndex(0)

// 全削除
//todos.removeAll()

// コピー
var todos2 = todos
todos.append("仕事を探す")


print("todos")
printTodos(todos2)

// その他の初期化
var array: [String] = [];
var array2 = [String]()
var array3 = [String](count: 10, repeatedValue: "")

// 多次元配列
var array33 = [[String]](count: 3, repeatedValue: [String](count: 3, repeatedValue: ""))
array33[0][0] = "a"
array33[0][1] = "b"
array33[0][2] = "c"
array33
array33[0]

// 検索
var count = 0
for task in todos {
    if task == "掃除をする" {
        count += 1
        print(task)
        break
        
    }
}
count

// 辞書(連想配列)
// （キー、バリュー）の組が入っている
func printNumberOfTires(numberOfTires: Dictionary<String, Int>) {
    for (key, value) in numberOfTires {
        print("\(key) -> \(value)")
    }
    
}
var numberOfTires = ["車": 4, "バイク": 2, "船": 0]
//var numberOfTires: Dictionary<String, Int> = [:]
//var numberOfTires = Dictionary<String, Int>()
//var numberOfTires = [String: Int]()
//numberOfTires["車"] = 4;
printNumberOfTires(numberOfTires)

// 辞書のコピー
// 参照のコピーではない
var numberOfTires2 = numberOfTires;
printNumberOfTires(numberOfTires2)
numberOfTires2["車"] = 6
printNumberOfTires(numberOfTires2)
numberOfTires["車"]

// 検索

// 外部引数
func areaOfTriangle(base: Int, height: Int) {
    print(base * height / 2)
}
areaOfTriangle(2, height: 4)
//areaOfTriangle(base: 2, height: 4)

func makeTuple(base: Int) ->(x: Int, y: Int, z: Int) {
    let x = base
    let y = base * 2
    let z = 0
    return (x, y, z)
}
var tuple  = makeTuple(2)
tuple.0
tuple.x
tuple.z

