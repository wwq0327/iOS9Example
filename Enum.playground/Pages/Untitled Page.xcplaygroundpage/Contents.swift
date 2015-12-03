//: [Previous](@previous)

import Foundation

/**
    - param
    - returns: String
*/
enum NumberParser: Int {
    // 将数字转换成汉字
    case One = 1, Two, Three, Four, Five, Six, Seven, Eight, Nine, Zero
    
    var singleNumberToChinese: String {
        switch self {
        case .One:
            return "一"
        case .Two:
            return "二"
        case .Three:
            return "三"
        case .Four:
            return "四"
        case .Five:
            return "五"
        case .Six:
            return "六"
        case .Seven:
            return "七"
        case .Eight:
            return "八"
        case .Nine:
            return "九"
        case .Zero:
            return "零"
        }
    }
}

NumberParser(rawValue: 2)

//class NumbersParser {
//    func numberToChinese(number: Int) -> String {
//        let numbers = String(number).characters
//        var finalString = ""
//        for singleNumber in numbers {
//            let string = NumberParser(rawValue: )
//            finalString = "\(finalString)\(string)"
//            
//        }
//        return finalString
//    }
//}