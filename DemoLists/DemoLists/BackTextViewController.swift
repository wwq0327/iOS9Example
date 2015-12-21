//
//  BackTextViewController.swift
//  DemoLists
//
//  Created by wyatt on 15/12/19.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class BackTextViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackgroundColorToText()
        
    }
    
    func addBackgroundColorToText() {
        let style = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        
        style.firstLineHeadIndent = 10.0
        style.headIndent = 10
        style.tailIndent = 0
        
        let attributes = [NSParagraphStyleAttributeName: style]
        textLabel.attributedText = NSAttributedString(string: textLabel.text!, attributes: attributes)
        let textbackgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        textLabel.backgroundColor = textbackgroundColor
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
