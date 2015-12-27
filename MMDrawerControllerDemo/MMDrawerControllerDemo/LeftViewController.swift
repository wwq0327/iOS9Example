//
//  LeftViewController.swift
//  MMDrawerControllerDemo
//
//  Created by wyatt on 15/12/26.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit
import MMDrawerController

class LeftViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func setTableView() {
        tableView = UITableView(frame: CGRectMake(0, 120, Common.screenWidth * 0.6, view.frame.height), style: UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor.grayColor()

        let headImageViewHeight: CGFloat = 120
        let headImageview = UIImageView(frame: CGRectMake(0, 0, Common.screenWidth * 0.6, headImageViewHeight))
        headImageview.image = UIImage(named: "1121212")
        
        self.view.addSubview(headImageview)
        self.tableView.tableFooterView = UIView()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        if cell == nil {
            cell = UITableViewCell(style: .Value1, reuseIdentifier: identifier)
            cell?.accessoryType = .DisclosureIndicator
            cell?.selectionStyle = .None
        }
        
        if indexPath.row == 0 {
            cell?.textLabel?.text = "我的主页"
        } else if indexPath.row == 1 {
            cell?.textLabel?.text = "移动动画"
        } else {
            cell?.textLabel?.text = "通用主页"
        }
        
        return cell!
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            toggleView(HomeViewController())
        case 1:
            let moveVC = self.storyboard?.instantiateViewControllerWithIdentifier("moveVC")
            toggleView(moveVC!)
        default:
            toggleView(OtherViewController())
            
        }
    }
    
    func toggleView(view: UIViewController) {
        let otherViewController = view
        let otherNavigationController = UINavigationController(rootViewController: otherViewController)
        let appDelegate = Common.appDelegate()
        appDelegate.drawerController.centerViewController = otherNavigationController
        appDelegate.drawerController.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }

}
