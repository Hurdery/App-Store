//
//  ASBaseViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASBaseViewController: UIViewController {

    
    /// 标题View
    lazy var largeTitleView: ASLargeTitleView = {
        
        let largeTitleView = ASLargeTitleView(frame: CGRect(x: 0, y: 0, width: Int(SCREENWIDTH), height: NAVIGATION_BAR_HEIGHT))
        return largeTitleView
        
    }()
    
    
    /// 搜索框
    lazy var largeSearchView: ASLargeSearchView = {
        
        let largeSearchView = ASLargeSearchView(frame: CGRect(x: 0, y: 0, width: Int(SCREENWIDTH), height: 100))
    
        return largeSearchView
        
    }()
    
    //主列表
    lazy var tableV: UITableView = {
        
        let tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(NAVIGATION_BAR_HEIGHT), width: SCREENWIDTH, height: SCREENHEIGHT - CGFloat(NAVIGATION_BAR_HEIGHT) - TAB_BAR_HEIGHT), style: .plain)
        tableV.tableFooterView = UIView()
        
        if #available(iOS 11.0, *) {
               tableV.contentInsetAdjustmentBehavior = .never
        }
        
        return tableV
        
    }()
    
    //默认隐藏
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white

    }
    
}


extension ASBaseViewController: UIScrollViewDelegate {
    
    
    /// 滑动控制是否显示导航栏
    /// - Parameter scrollView: <#scrollView description#>
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        if scrollView.isEqual(self.tableV) {
            
            let offsetY = scrollView.contentOffset.y
            
            if offsetY > 0 {
                navigationController?.navigationBar.isHidden = false
            } else {
                navigationController?.navigationBar.isHidden = true
            }
            
        }

    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        print("WillBeginDragging:=======\(scrollView.contentOffset.y)")
    }
}

