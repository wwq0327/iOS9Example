//
//  ViewController.swift
//  myUILabelDemo
//
//  Created by wyatt on 15/11/29.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var textLabel: myUILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textLabel = myUILabel(frame: CGRect(x: 20, y: 50, width: 280, height: 200))
        textLabel.text = "Do any additional setup after loading the view, typically from a nib.Do any additional setup after loading the view, typically from a nib.Do any additional setup after loading the view, typically from a nib."
        
        textLabel.verticalAlignment = VerticalAlignment.Middle
        textLabel.numberOfLines = 0
        textLabel.backgroundColor = UIColor.grayColor()
        
        view.addSubview(textLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

