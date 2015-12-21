//
//  HomePageAnimationUtil.swift
//  DemoLists
//
//  Created by wyatt on 15/12/3.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

let kBottomLineWith: CGFloat = 272.0

class HomePageAnimationUtil: NSObject {
    // 顶端两行label的动画
    class func titleLabelAnimationWithLabel(label: UILabel, view: UIView) {
        UIView.animateWithDuration(1) { () -> Void in
            label.transform = CGAffineTransformIdentity
        }
    }
    
    // 手机图标的动画
    class func phoneIconImageViewAnimation(imageView: UIImageView, view: UIView) {
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            // 回归原始位置
            imageView.transform = CGAffineTransformIdentity
            // 透明度为1，即完全显示出imageview
            imageView.alpha = 1.0
            }, completion: nil)
    }
    
    // 直线的动画
    class func textFieldBottomLineAnimationWithConstraint(constraint: NSLayoutConstraint, view: UIView) {
        // 先设定好约束，但此是在界面上并没有进行刷新
        constraint.constant = kBottomLineWith
        UIView.animateWithDuration(1.5) { () -> Void in
            // 开始界面刷新，线束开始起作用
            view.layoutIfNeeded()
        }
        
    }
    
    
    // 按钮动画
    class func registerButtonAnimation(button: UIButton, view: UIView, progress: CGFloat) {
        
    }
    
    // 版权文字动画
    class func tipsLabelMaskAnination(view: UIView, beginTime: NSTimeInterval) {
        
    }
    
}
