//
//  RectView.swift
//  DemoLists
//
//  Created by wyatt on 15/12/3.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

@IBDesignable
class RectView: UIView {
    
    // 边框颜色
    @IBInspectable var strokeColor: UIColor = UIColor.blackColor()
    // 填充色
    @IBInspectable var fillColor: UIColor = UIColor.whiteColor()
    // 线的粗细
    @IBInspectable var lineWidth: CGFloat = 1.0
    
    override func drawRect(rect: CGRect) {
        // 实线矩形
        // 位置、长、宽
        let rectPath = UIBezierPath(rect: CGRectMake(30, 80, 260, 120))
        // 设置边框颜色
        strokeColor.setStroke()
        // 线的粗细
        rectPath.lineWidth = lineWidth
        // 开始绘制
        rectPath.stroke()
        
        // 对矩形框进行填充
        fillColor.setFill()
        rectPath.fill()
        
        // 绘制虚线框
        let context = UIGraphicsGetCurrentContext()
        let dashedRect = UIBezierPath(rect: CGRectMake(30, 220, 260, 120))
        
        dashedRect.lineWidth = lineWidth
        
        CGContextSaveGState(context)
        CGContextSetLineDash(context, 5, [10, 10], 2)
        strokeColor.setStroke()
        dashedRect.stroke()
        CGContextRestoreGState(context)
    }

}
