//
//  ItemCollectionViewCell.swift
//  CollectionDemo
//
//  Created by wyatt on 15/12/27.
//  Copyright © 2015年 Wanqing Wang. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        // 关键参数，允许边界面显示阴影
        self.layer.masksToBounds = false
        
        self.layer.shadowColor = UIColor.blackColor().CGColor
        
        // 阴影偏移
        self.layer.shadowOffset = CGSizeMake(0, 0)
        
        // 阴影半径
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.20
    }
}
