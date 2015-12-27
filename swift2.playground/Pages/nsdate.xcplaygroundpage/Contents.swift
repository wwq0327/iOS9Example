//: [Previous](@previous)

import Foundation

//: ## NSDate
let currentDate = NSDate()
let dateFormatter = NSDateFormatter()
// 手动设置当前位置， 默认情况下是采用当前位置的，也可以这样去设置
dateFormatter.locale = NSLocale.currentLocale()

//: 使用 date fomatter styles 为输也结果设置格式
// Full Style.
dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
var convertedDate = dateFormatter.stringFromDate(currentDate)
print(convertedDate)

dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
print(dateFormatter.stringFromDate(currentDate))

dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
print(dateFormatter.stringFromDate(currentDate))


//: 使用 Date format specifier
dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy"
convertedDate = dateFormatter.stringFromDate(currentDate)
print(convertedDate)



//: 将时间格式的字符串转换成 NSDate
var dateAsString = "24-12-2015 23:59"
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
let newDate = dateFormatter.dateFromString(dateAsString)
print(newDate)

//: ## NSDateComponents
let calendar = NSCalendar.currentCalendar()
let dateCompents = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: currentDate)
print("day = \(dateCompents.day), month = \(dateCompents.month), year = \(dateCompents.year)")

dateFormatter.dateFormat = "yyyy年MM月dd日"
let date1 = dateFormatter.dateFromString("2016年12月21日")!
let date2 = dateFormatter.dateFromString("2016年12月26日")!


// 如果 date1 早于 date2，则返回 date1
date1.earlierDate(date2)

// 参照某个时间，来比较大小
date1.timeIntervalSinceReferenceDate < date2.timeIntervalSinceReferenceDate

calendar.dateByAddingUnit(NSCalendarUnit.Day, value: 10, toDate: date1, options: NSCalendarOptions.init(rawValue: 0))

