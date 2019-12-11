
//
//  Const.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

let SCREENWIDTH = UIScreen.main.bounds.width
let SCREENHEIGHT = UIScreen.main.bounds.height
let COMMONCOLOR = UIColor(red: 242.0 / 255.0, green: 242.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
let LINECOLOR = UIColor(red: 218.0 / 255.0, green: 218.0 / 255.0, blue: 218.0  / 255.0, alpha: 1)
let BLUECOLOR = UIColor(red: 3.0 / 255.0, green: 115.0 / 255.0, blue: 255.0 / 255.0, alpha: 1)
let RANDOMCOLOR = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1.0)

//适配Iphone_X XR XS XSMax
let Is_Iphone = (UI_USER_INTERFACE_IDIOM() == .phone)
//刘海屏
let Is_Iphone_X_XS_XR_XSMAX = (Is_Iphone &&  SCREENHEIGHT >= 812)
// 状态栏高度
let STATUS_BAR_HEIGHT = Is_Iphone_X_XS_XR_XSMAX ? 44 : 20
// 导航栏高度
let NAVIGATION_BAR_HEIGHT  = Is_Iphone_X_XS_XR_XSMAX ? 88 : 64
// tabBar高度
let TAB_BAR_HEIGHT : CGFloat = Is_Iphone_X_XS_XR_XSMAX ? 49 + 34 : 49
// home indicator
let HOME_INDICATOR_HEIGHT = Is_Iphone_X_XS_XR_XSMAX ? 34 : 0
