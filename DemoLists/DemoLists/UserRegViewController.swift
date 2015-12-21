//
//  UserRegViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/3.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class UserRegViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleBottomLabel: UILabel!
    
    @IBOutlet weak var bottomLineWidth: NSLayoutConstraint!
    @IBOutlet weak var phoneIconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 先将组件移动屏幕外面
        titleLabel.transform = CGAffineTransformMakeTranslation(0, -200)
        titleBottomLabel.transform = CGAffineTransformMakeTranslation(0, -200)
        
        // 将组件移动到视图之外，同时设定透明度为0
        // 如果不设置的话，由主表到此视图时，手机的icon会提示显示出来，为避免此种情况而设置为全透明
        phoneIconImageView.transform = CGAffineTransformMakeTranslation(-100, 0)
        phoneIconImageView.alpha = 0
        
        // 设置线条值
        bottomLineWidth.constant = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 在界面已让用户看到时才执行
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        HomePageAnimationUtil.titleLabelAnimationWithLabel(titleLabel, view: view)
        HomePageAnimationUtil.titleLabelAnimationWithLabel(titleBottomLabel, view: view)
        HomePageAnimationUtil.phoneIconImageViewAnimation(phoneIconImageView, view: view)
        HomePageAnimationUtil.textFieldBottomLineAnimationWithConstraint(bottomLineWidth, view: view)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //当点击输入框以外区域时，关闭键盘
        self.view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
