//
//  myUILabel.swift
//  myUILabelDemo
//
//  Created by wyatt on 15/11/29.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

enum VerticalAlignment {
    case Top
    case Middle
    case Bottom
}

class myUILabel: UILabel {
    
    var verticalAlignment: VerticalAlignment = .Bottom {
        willSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.verticalAlignment = VerticalAlignment.Middle
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var textRect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)
        switch self.verticalAlignment {
        case .Top:
            textRect.origin.y = bounds.origin.y
        case .Bottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height
        case .Middle:
            fallthrough
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2

        }
        return textRect
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let actualRect = self.textRectForBounds(rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawTextInRect(actualRect)
    }
}
