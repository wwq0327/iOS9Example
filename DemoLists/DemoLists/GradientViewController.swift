//
//  GradientViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/19.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit
import GradientView

class GradientViewController: UIViewController {

    @IBOutlet weak var gradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gradientView.colors = [
        UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0),
        UIColor(red: 0/255.0, green: 0/255.0, blue: 0, alpha: 1.0)
        ]
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
