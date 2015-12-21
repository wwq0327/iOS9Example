//: [Previous](@previous)

import Foundation

//: Swift中枚举高级用法及实践
//: > 枚举声明的类型是囊括可能状态的有限集，且可以具有附加值。通过内嵌(nesting),方法(method),关联值(associated values)和模式匹配(pattern matching),枚举可以分层次地定义任何有组织的数据。

//: ## 深入理解 (Diving In)
//: ### 定义基本的枚举类型（Defining Basic Enums）
enum Movement {
    case Left
    case Right
    case Top
    case Bottom
}

//: 获取 `Movement`的枚举值，或是按照特定情况执行操作。
let aMovement = Movement.Left

// switch 分情况处理
switch aMovement {
case .Left: print("left")
default:()
}

// 明确的case情况
if case .Left = aMovement {
    print("left")
}

if aMovement == .Left { print("left") }

//: 枚举值（Enum Values）
enum House: String {
    case Baratheon = "Ours is the Fury"
    case Greyjoy = "We Do Not Sow"
}

print(House.Greyjoy.rawValue)

//: 也可以忽略枚举值，但仅限于`String`及`Int`类型。
//: Mercury = 1, Venus = 2, ... Neptune = 8
enum Planet: Int {
    case Mercury = 1, Venus, Earth, mars, Jupiter, Saturn, Uranus, neptune
}

print(Planet.mars.rawValue)

//: 如果没有给枚举值，名为该项名称
enum CompassPoint: String {
    case North, South, East, West
}

print(CompassPoint.South)
print(CompassPoint.South.rawValue)

//enum MyBool: Bool {
//    case True = true
//    case False = false
//}

enum Info: Double {
    case Age = 2.3
}

//: Swift枚举中支持以下四种关联值类型:
//: - 整型(Integer)
//: - 浮点数(Float Point)
//: - 字符串(String)
//: - 布尔类型(Boolean)

//: ### 嵌套枚举（Nesting Enums）
enum Character {
    enum Weapon {
        case Bow
        case Sword
        case Lance
        case Dagger
    }
    enum Helmet {
        case Wooden
        case Iron
        case Diamond
    }
    case Thief
    case Warrior
    case Knight
}

//: 访问条目
let character = Character.Thief
let weapon = Character.Weapon.Bow
let helmet = Character.Helmet.Iron

//: ### 包含枚举（Containing Enums）
//: 有助于将信息集中在一起。
struct CharacterB {
    enum CharacterType {
        case Thief
        case Warrior
        case Knight
    }
    enum Weapon {
        case Bow
        case Sword
        case Lance
        case Dagger
    }
    enum Helmet {
        case Wooden
        case Iron
        case Diamond
    }
    let type: CharacterType
    let weapon: Weapon
}

let warrior = CharacterB(type: .Warrior, weapon: .Sword)


//: ### 关联值（Associated Value）
//: 关联值是将额外信息附加到enum case 中的一种极好方式。
//: 简单例程
enum Trade {
    case Buy
    case Sell
}

func trade(tradeType: Trade, stock: String, amount: Int) {}

//: 但股票的价值及数量应从属于交易，而不是作为一个独立的方法。更爽的方案：
enum TradeEnum {
    case Buy(stock: String, amount: Int)
    case Sell(stock: String, amount: Int)
}

func trade(type: TradeEnum) {
    switch type {
    case .Buy(let stock, let amount):
        print("Buy: \(stock) -- \(amount)")
    case .Sell(let stock, let amount):
        print("Sell: \(stock) -- \(amount)")
    }
}

let trade = TradeEnum.Buy(stock: "APPL", amount: 300)

//: 可使用模式匹配查询
if case let TradeEnum.Buy(stock, amount) = trade {
    print("\(stock) -- \(amount)")
}

//: Labels 标签，关联值标签不是必须的，但当有时，创建枚举对象时就需要提供标签
enum Homen {
    // 省略label
    case Good(String, Int)
    // 带有label
    case Bad(name: String, age: Int)
}

// 对于不带label的声明，如果使用if case语句的话，不知道怎么办了。
// 但对于switch case这样的话句，却和声不声明就没啥关系了。
let homen = Homen.Good("wyatt", 36)
switch homen {
case .Good(let name, let age):
    print("Good: \(name), \(age)")
case .Bad(let name, let age):
    print("Bad: \(name), \(age)")
}


enum Device {
    case iPad, iPhone, AppleTV, AppleWatch
    func introduced() -> String {
        switch self {
        case .AppleTV: return "\(self) was introduced 2006"
        case .iPhone: return "\(self) was introduced 2007"
        case .iPad: return "\(self) was introduced 2010"
        case .AppleWatch: return "\(self) was introduced 2014"
        }
    }
}

print(Device.iPhone.introduced())

enum AppleDevice {
    case AppleWatch
    static func fromSlang(term: String) -> Device? {
        if term == "iWatch" {
            return .AppleWatch
        }
        return nil
    }
}

print(AppleDevice.fromSlang("iWatch")!)

//: 协议 Protocols
protocol AccountCompatible {
    var remainingFunds: Int { get }
    mutating func addFunds(amount: Int) throws
    mutating func removeFunds(amount: Int) throws
}

enum Account {
    case Empty
    case Funds(remaining: Int)
    
    enum Error: ErrorType {
        case Overdraft(amount: Int)
    }
    
    var remainingFunds: Int {
        switch self {
        case .Empty: return 0
        case .Funds(let remaining): return remaining
        }
    }
}

extension Account: AccountCompatible {
    mutating func addFunds(amount: Int) throws {
        var newAmount = amount
        if case let .Funds(remaining) = self {
            newAmount += remaining
        }
        if newAmount < 0 {
            throw Error.Overdraft(amount: -newAmount)
        } else if newAmount == 0 {
            self = .Empty
        } else {
            self = .Funds(remaining: newAmount)
        }
    }
    
    mutating func removeFunds(amount: Int) throws {
        try self.addFunds(amount * -1)
    }
}

var account = Account.Funds(remaining: 20)
account.remainingFunds

print("Add: ", try? account.addFunds(10))
print ("remove 1: ", try? account.removeFunds(15))
print ("remove 2: ", try? account.removeFunds(55))

