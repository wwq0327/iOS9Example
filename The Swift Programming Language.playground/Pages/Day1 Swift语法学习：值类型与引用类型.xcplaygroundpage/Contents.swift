import Foundation

//: # 值类型与引用类型
//: ## 值类型
//: 字符串类型为值类型，制会被拷贝到新的对象上，且新旧两个对象的值是独立互不影响的。
var str = "Hello, playground"
var str1 = str

print("str: \(str), str1: \(str1)")

str = "hello, world"
print("str: \(str), str1: \(str1)")
//: Out: "str: hello, world, str1: Hello, playground\n"
//: 原对象的值作了修改，但新的第二个对象的值并没有受到影响，在对str1赋值的时候，也只是将str作了一个副本，然后再将这个副本给了str1。

//: ## 引用类型
//: 对于类来说，由于类在Swift中是引用类型，在传递参数的时候，就是数据本身传递给新的变量的，因而新旧变量的值都会产生相应的变化。
class StringA {
    var str = "hello, world"
}

var strA = StringA()
var strB = strA

print("strA: \(strA.str), strB: \(strB.str)")
strA.str = "hello, swift"

print("strA: \(strA.str), strB: \(strB.str)")

// 修改引用者的值 
strB.str = "你好，世界！"
print("strA: \(strA.str), strB: \(strB.str)")
//: Out： "strA: 你好，世界！, strB: 你好，世界！\n"
//: 新旧变量的值都发生着相应的变化。

//: ## Swift中值类型有
//: - 枚举型
enum CommpassPoint {
    case North
    case South
    case East
    case West
}

var p1 = CommpassPoint.North
var p2 = p1
print("p1: \(p1), p2: \(p2)")

p2 = .South
print("p1: \(p1), p2: \(p2)")
//: "p1: North, p2: South\n"
//: 所输出的两个值不一样，即枚举类型属于值类型

//: - 结构体
struct Human {
    var name = "Wyatt"
    var apge = "35"
}
var person1 = Human()
var person2 = person1
print("P1: \(person1.name), P2: \(person2.name)")

person1.name = "hahaha"
print("P1: \(person1.name), P2: \(person2.name)")

//: ## Swift中引用类型有
//: - 类





