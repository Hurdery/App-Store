//
//  ASGameViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASAppViewController: ASBaseViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUI()
        
    }
    
    fileprivate func setUI() {
        
        self.tableV.delegate = self
        self.tableV.dataSource = self
        self.largeTitleView.isShowTime = false
        self.largeTitleView.isShowBottomLine = true
        self.largeTitleView.headLabel.text = "App"
        self.tableV.tableHeaderView = self.largeTitleView
        /*
         *
         *此处有重用
         *上一个tabbar "Game" 无重用
         *自行比较区别在哪
         *
         */
        self.tableV.register(ASGameTableViewCell.self, forCellReuseIdentifier: "ASGameTableViewCell")
        self.tableV.register(ASGame1TableViewCell.self, forCellReuseIdentifier: "ASGame1TableViewCell")
        self.tableV.register(ASGame2TableViewCell.self, forCellReuseIdentifier: "ASGame2TableViewCell")
        self.tableV.register(UINib.init(nibName: "ASGame3TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame3TableViewCell")
        self.tableV.register(UINib.init(nibName: "ASGame4TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame4TableViewCell")
        self.tableV.register(UINib.init(nibName: "ASGame5TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame5TableViewCell")
        view.addSubview(self.tableV)
        
    }
    
}

extension ASAppViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGameTableViewCell") as? ASGameTableViewCell
            cell?.delegate = self
            return cell!
            
        } else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame1TableViewCell") as? ASGame1TableViewCell
            return cell!
            
        } else if indexPath.row == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame2TableViewCell") as? ASGame2TableViewCell
            return cell!
            
        } else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame3TableViewCell") as? ASGame3TableViewCell
            return cell!
            
        } else if indexPath.row == 4 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame4TableViewCell") as? ASGame4TableViewCell
            cell!.selectionStyle = .none
            return cell!
            
        } else if indexPath.row == 9 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame5TableViewCell") as? ASGame5TableViewCell
            cell!.selectionStyle = .none
            return cell!
            
        } else  {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASGame1TableViewCell") as? ASGame1TableViewCell
            return cell!
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 480
        } else if indexPath.row == 3 {
            return 450
        } else if indexPath.row == 9 {
            return 580
        }
        return 400
    }
    
}
extension ASAppViewController: ASGameCollectionViewCellDelegate {
    
    func didClickASGameCollectionViewCellItem() {
        
        navigationController?.pushViewController(ASDetailViewController(), animated: true)

    }
    
}
