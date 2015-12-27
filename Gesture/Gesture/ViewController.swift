//
//  ViewController.swift
//  Gesture
//
//  Created by wyatt on 15/12/24.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        panGestureDemo()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 平移
    func panGestureDemo() {
        let gesture = UIPanGestureRecognizer(target: self, action: "viewPan:")
        self.myView.addGestureRecognizer(gesture)
    }
    
    func viewPan(sender: UIPanGestureRecognizer) {
        
        let transX = sender.translationInView(myView).x
        let transY = sender.translationInView(myView).y
        
        myView.transform = CGAffineTransformMakeTranslation(transX, transY)
    }


}

