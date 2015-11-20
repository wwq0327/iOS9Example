//
//  Photo.swift
//  RWDevCon
//
//  Created by Mic Pringle on 04/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class Photo {
  
  // 从plist文件中得到文字信息及图片编号
  // 调用之时，即可以得到所有的图片信息了
  // 这个方法很有意思，值得学习
  class func allPhotos() -> [Photo] {
    var photos = [Photo]()
    if let URL = NSBundle.mainBundle().URLForResource("Photos", withExtension: "plist") {
      if let photosFromPlist = NSArray(contentsOfURL: URL) {
        for dictionary in photosFromPlist {
          let photo = Photo(dictionary: dictionary as! NSDictionary)
          photos.append(photo)
        }
      }
    }
    return photos
  }
  
  var caption: String
  var comment: String
  var image: UIImage
  
  init(caption: String, comment: String, image: UIImage) {
    self.caption = caption
    self.comment = comment
    self.image = image
  }
  
  // 便利构造器 横向代理
  // 子类可以代理父类的构造器，但在同一个类中调用本类中的构造器时，就需要使用到便利构造器了
  convenience init(dictionary: NSDictionary) {
    let caption = dictionary["Caption"] as? String
    let comment = dictionary["Comment"] as? String
    let photo = dictionary["Photo"] as? String
    let image = UIImage(named: photo!)?.decompressedImage
    self.init(caption: caption!, comment: comment!, image: image!)
  }
  
  // 计算标签文字的高度
  func heightForComment(font: UIFont, width: CGFloat) -> CGFloat {
    let rect = NSString(string: comment).boundingRectWithSize(CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
    return ceil(rect.height)
  }
  
}
