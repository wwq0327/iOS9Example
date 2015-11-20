//
//  UIImage+Decompression.swift
//  RWDevCon
//
//  Created by Mic Pringle on 09/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

extension UIImage {
  
  var decompressedImage: UIImage {
    // 设置尺寸、透明度、 scale，为 0 时则表示参照当前屏幕执行
    UIGraphicsBeginImageContextWithOptions(size, true, 0)
    drawAtPoint(CGPointZero)
    // 获取当前屏幕图片
    let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
    // 结束截图
    UIGraphicsEndImageContext()
    return decompressedImage
  }
  
}
