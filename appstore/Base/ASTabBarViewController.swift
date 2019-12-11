//
//  ASTabBarViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addControllers()
        
    }

    private func addControllers() {
        
        creatNavController(VC: ASTodayViewController(), title: "Today", imageName: "ios-today")
        creatNavController(VC: ASGameViewController(), title: "Game", imageName: "ios-game")
        creatNavController(VC: ASAppViewController(), title: "App", imageName: "apple")
        creatNavController(VC: ASUpdateViewController(), title: "Update", imageName: "update")
        creatNavController(VC: ASSearchViewController(), title: "Search", imageName: "search")

    }
    
    
    /// 咱也不知道 就想写个注释
    /// - Parameter VC: <#VC description#>
    /// - Parameter title: <#title description#>
    /// - Parameter imageName: <#imageName description#>
    private func creatNavController(VC: UIViewController, title: String, imageName: String) {
        
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imageName)
        VC.tabBarItem.selectedImage = UIImage(named: imageName + ("-select"))
        addChildViewController(ASBaseNavController(rootViewController: VC))
        
    }
    
    
}
