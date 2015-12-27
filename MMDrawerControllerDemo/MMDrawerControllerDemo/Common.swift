//
//  Common.swift
//  MMDrawerControllerDemo
//
//  Created by wyatt on 15/12/26.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import Foundation
import UIKit

struct Common {
    static let screenWidth = UIScreen.mainScreen().bounds.maxX
    
    static func appDelegate() -> AppDelegate {
        return UIApplication.sharedApplication().delegate as! AppDelegate
    }
}