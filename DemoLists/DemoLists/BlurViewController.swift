//
//  BlurViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/19.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class BlurViewController: UIViewController {

    @IBOutlet weak var backImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .Light))
        
        // 从高的三分之二处开始，绘制高的三分之一的高度
        let blurRect = CGRectMake(0, self.view.frame.height / 3 * 2, self.view.frame.width, self.view.frame.height / 3)
        blur.frame = blurRect
        
        backImageView.addSubview(blur)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
