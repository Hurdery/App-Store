//
//  AppDelegate.swift
//  appstore
//
//  Created by guazhac on 2019/1/16.
//  Copyright © 2019 CB_MD. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        sleep(2)
        window?.rootViewController = ASTabBarViewController()
        
        return true
    }

}

