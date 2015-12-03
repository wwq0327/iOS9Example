//
//  LineView.swift
//  DemoLists
//
//  Created by wyatt on 15/12/3.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

@IBDesignable
class LineView: UIView {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let linePath = UIBezierPath()
        
        linePath.moveToPoint(CGPoint(x: 30, y: 120))
        linePath.addLineToPoint(CGPoint(x: 290, y: 120))
        linePath.addLineToPoint(CGPoint(x: 30, y: 240))
        linePath.addLineToPoint(CGPoint(x: 290, y: 240))
        
        linePath.lineWidth = 2.0
        UIColor.redColor().setStroke()
        linePath.stroke()
        
        // 画虚线
        let context = UIGraphicsGetCurrentContext()
        let dashedPath = UIBezierPath()
        dashedPath.moveToPoint(CGPoint(x: 30, y: 280))
        dashedPath.addLineToPoint(CGPoint(x: 290, y: 280))
        CGContextSaveGState(context)
        CGContextSetLineDash(context, 0, [10, 10], 2)

        dashedPath.lineWidth = 3.0

        dashedPath.stroke()
        CGContextRestoreGState(context)
    }


}

