//
//  HexColor.swift
//  Nike Collection
//
//  Created by Shao Kahn on 10/30/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

extension UIColor {
    var toHexString: String {
 var r: CGFloat = 0
   var g: CGFloat = 0
 var b: CGFloat = 0
   var a: CGFloat = 0
   self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
return String( format: "%02X%02X%02X", Int(r * 0xff), Int(g * 0xff), Int(b * 0xff))
}
    
    convenience init(hex: String) {
   let scanner = Scanner(string: hex)
scanner.scanLocation = 0
  var rgbValue: UInt64 = 0
 scanner.scanHexInt64(&rgbValue)
  let r = (rgbValue & 0xff0000) >> 16
let g = (rgbValue & 0xff00) >> 8
let b = rgbValue & 0xff
 self.init(red: CGFloat(r) / 0xff, green: CGFloat(g) / 0xff,
blue: CGFloat(b) / 0xff, alpha: 1 )
   }
    
    class func randomColor() -> UIColor{
        
     return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
    }
}


