//: [Previous](@previous)

import Foundation

func mydate(dateString: String) -> Bool {
    
    // 将节气日期 +15 天，再将所得日期与当前日期相比交，如果大于了当前日期，则返回 true
    
    let detalDay = 15
    
    let currentCalendar = NSCalendar.currentCalendar()
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy年MM月dd日"
    let newDate = dateFormatter.dateFromString(dateString)!
    let currentDate = NSDate()
    
    let claculatedDate = currentCalendar.dateByAddingUnit(NSCalendarUnit.Day, value: detalDay, toDate: newDate, options: NSCalendarOptions.init(rawValue: 0))
    
    if claculatedDate?.timeIntervalSinceReferenceDate >= currentDate.timeIntervalSinceReferenceDate {
        return true
    }
    
    return false
}

mydate("2015年12月21日")
mydate("2015年12月7日")



