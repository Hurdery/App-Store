//
//  ASBaseViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASBaseViewController: UIViewController {

    lazy var largeTitleView: ASLargeTitleView = {
        
        let largeTitleView = ASLargeTitleView(frame: CGRect(x: 0, y: 0, width: Int(screenWidth), height: NAVIGATION_BAR_HEIGHT))
        return largeTitleView
        
    }()
    
    lazy var largeSearchView: ASLargeSearchView = {
        
        let largeSearchView = ASLargeSearchView(frame: CGRect(x: 0, y: 0, width: Int(screenWidth), height: 100))
    
        return largeSearchView
        
    }()
    
    lazy var tableV: UITableView = {
        
        let tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(NAVIGATION_BAR_HEIGHT), width: screenWidth, height: screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT)), style: .plain)
        tableV.tableFooterView = UIView()
        return tableV
        
    }()
    
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
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        if scrollView.isEqual(self.tableV) {
//            print("DidScroll:=======\(scrollView.contentOffset.y)")
            
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

