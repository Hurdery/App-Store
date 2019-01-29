//
//  ASSearchViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASSearchViewController: ASBaseViewController, searchTfDelegate, cancelBtnDelegate {
    
    var searchVC: UISearchController!
    
    private lazy var searchNav: ASNavSearchView = {
       
        let searchNav = ASNavSearchView(frame: CGRect(x: 0, y: NAVIGATION_BAR_HEIGHT, width: Int(screenWidth), height: NAVIGATION_BAR_HEIGHT))
        print(NAVIGATION_BAR_HEIGHT)
        searchNav.isHidden = true
        return searchNav
        
    }()
    
    private lazy var maskV: UIView = {
        
        let maskV = UIView(frame: CGRect(x: 0, y: NAVIGATION_BAR_HEIGHT, width: Int(screenWidth), height: Int(screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT))))
        maskV.backgroundColor = UIColor(red: 56.0 / 255.0, green: 56.0 / 255.0, blue: 56.0 / 255.0, alpha: 0.6)
        maskV.isHidden = true
        return maskV
        
    }()
    
    func didClickCancelBtn() {
        
        self.searchNav.isHidden = true
        self.maskV.isHidden = true
        self.tableV.tableHeaderView = self.largeSearchView
        self.searchNav.searchTf.resignFirstResponder()

    }
    
    func searchTfDidBeginEditing() {
        
        self.searchNav.isHidden = false
        self.tableV.tableHeaderView = UIView()

        UIView.animate(withDuration: 0.1) {
            self.searchNav.transform = CGAffineTransform(translationX: 0, y: -CGFloat(NAVIGATION_BAR_HEIGHT))
        }
        self.maskV.isHidden = false
        self.searchNav.searchTf.becomeFirstResponder()

    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        UIApplication.shared.keyWindow?.addSubview(self.maskV)
        view.addSubview(self.searchNav)
        view.backgroundColor = .white
        
        self.tableV.delegate = self
        self.tableV.dataSource = self
        self.tableV.tableHeaderView = self.largeSearchView
        self.largeSearchView.searchDelegate = self
        self.searchNav.cancelDelegate = self
        self.tableV.estimatedRowHeight = 50
        self.tableV.rowHeight = UITableViewAutomaticDimension
        view.addSubview(self.tableV)
        self.tableV.frame = CGRect(x: 20, y: CGFloat(NAVIGATION_BAR_HEIGHT), width: screenWidth - 40, height: screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT))
    }
}

extension ASSearchViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }
            cell?.textLabel?.text = "热门搜索"
            return cell!
            
        } else  {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell1")
            }
            cell?.textLabel?.text = ["二十三，糖瓜粘", "二十四，扫房子", "二十五，磨豆腐", "二十六，炖羊肉", "二十七，宰公鸡", "二十八，把面发", "二十九，蒸馒头", "三十晚上闹一宿", "大年初一扭一扭"][indexPath.row - 1]
            cell?.textLabel?.textColor = blueColor
            return cell!
        }
        
    }
    
}

