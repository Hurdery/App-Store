//
//  ASBaseNavController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASBaseNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
            if childViewControllers.count > 0{
//                viewController.hidesBottomBarWhenPushed = true; 然而此处并不需要隐藏，神奇，太神奇了
            }
        super.pushViewController(viewController, animated: animated)

    }
    
}
