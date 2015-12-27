//
//  MoveViewController.swift
//  MMDrawerControllerDemo
//
//  Created by wyatt on 15/12/26.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit
import MMDrawerController

class MoveViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.whiteColor()
        title = "移动动画"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: UIBarButtonItemStyle.Plain, target: self, action: "menuSlide")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveTapped(sender: AnyObject) {
        UIView.animateWithDuration(3, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
                self.redView.transform = CGAffineTransformMakeTranslation(200, 0)
            }, completion: nil)
    }

    func menuSlide() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.drawerController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }

}
