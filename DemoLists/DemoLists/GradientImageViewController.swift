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
        
        gradientView.frame = CGRectMake(0, self.view.frame.height / 3 * 2, self.view.frame.width, self.view.frame.height / 3)
        
        self.view.insertSubview(gradientView, aboveSubview: backImageView)
        gradientLayer.frame = gradientView.bounds


        
        let opaqueBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).CGColor
        let transparentBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).CGColor
        gradientLayer.colors = [transparentBlackColor, opaqueBlackColor]
        
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
