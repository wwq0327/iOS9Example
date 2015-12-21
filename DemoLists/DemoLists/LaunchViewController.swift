//
//  LaunchViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/19.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit
import GradientView

class LaunchViewController: UIViewController {
    

    @IBOutlet weak var animatedImagesView: JSAnimatedImagesView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animatedImagesView.dataSource = self
        
        // 半透明遮罩层
        let blurView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        blurView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        animatedImagesView.addSubview(blurView)
        
        // 渐变效果
//        let gradientView = GradientView(frame: CGRectMake(0, self.view.frame.height / 3 * 2, self.view.frame.width, self.view.frame.height / 3))
//        gradientView.colors = [
//            UIColor(red: 0, green: 0, blue: 0, alpha: 0),
//            UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
//        ]
//        
//        animatedImagesView.addSubview(gradientView)
        
        // 动画
        UIView.animateWithDuration(2.5) { () -> Void in
            blurView.backgroundColor = UIColor.clearColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension LaunchViewController: JSAnimatedImagesViewDataSource {
    func animatedImagesNumberOfImages(animatedImagesView: JSAnimatedImagesView!) -> UInt {
        return 2
    }
    
    func animatedImagesView(animatedImagesView: JSAnimatedImagesView!, imageAtIndex index: UInt) -> UIImage! {
        return UIImage(named: "launchImage1")
    }
}