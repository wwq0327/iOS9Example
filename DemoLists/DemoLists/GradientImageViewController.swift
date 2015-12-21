//
//  GradientImageViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/19.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class GradientImageViewController: UIViewController {

    @IBOutlet weak var backImageView: UIImageView!
    
    var gradientLayer = CAGradientLayer()
    
    var gradientView = UIView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 确定出需要设定的渐变透明的矩形框的大小，这里设置的是从三分之二高开始，做一个三分之一高的矩形
        gradientView.frame = CGRectMake(0, self.view.frame.height / 3 * 2, self.view.frame.width, self.view.frame.height / 3)
        // 将渐变效果的图形大小设定到与底部矩形一样的大小
        gradientLayer.frame = gradientView.bounds
        
        // 下端透明度
        let opaqueBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).CGColor
        // 上端透明度
        let transparentBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).CGColor
        gradientLayer.colors = [transparentBlackColor, opaqueBlackColor]
        
        // 分别将效果添加入view视图中
        gradientView.layer.insertSublayer(gradientLayer, atIndex: 0)
        self.view.insertSubview(gradientView, aboveSubview: backImageView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        

    }

}
