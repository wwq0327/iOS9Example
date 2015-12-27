//: [Previous](@previous)

import Foundation

let currentDate = NSDate()

let dateFormatter = NSDateFormatter()

dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
var convertedDate = dateFormatter.stringFromDate(currentDate)
dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
convertedDate = dateFormatter.stringFromDate(currentDate)

// date - > string
dateFormatter.dateFormat = "HH:mm:ss"
convertedDate = dateFormatter.stringFromDate(currentDate)

// string -> date
var dateAsString = "24-12-2015 23:59"
dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
var newDate = dateFormatter.dateFromString(dateAsString)

// NSDate -> NSDateComponents
let calendar = NSCalendar.currentCalendar()
let dateComponents = calendar.components(NSCalendarUnit.Year, fromDate: currentDate)
dateComponents.year
