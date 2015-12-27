//: Playground - noun: a place where people can play

import UIKit
import SwiftDate

let dateString = "2015-01-05T22:10:55.200Z"
dateString.toDate(DateFormat.ISO8601)

let myDateString = "1/22 23:25:12"

let date = myDateString.toDate(DateFormat.Custom("MM/dd HH:mm"))
let d1 = (date?.inUTCRegion())! + 15.years

let d2 = NSDate().inUTCRegion()

d1 <= d2

func compareDateWithString(dateString: String) -> Bool {
    let regionDate = dateString.toDate(DateFormat.Custom("MM月dd日 HH:mm"))?.inUTCRegion()
    let endDate = regionDate! + 15.years
    
    if endDate <=
    
}