//
//  ASGameViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASGameViewController: ASBaseViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUI()
        
    }
    
    fileprivate func setUI() {
        
        self.tableV.delegate = self
        self.tableV.dataSource = self
        self.largeTitleView.isShowTime = false
        self.largeTitleView.isShowBottomLine = true
        self.largeTitleView.headLabel.text = "Game"
        self.tableV.tableHeaderView = self.largeTitleView
        /*
         *
         *此处不重用
         *下一个tabbar "App" 有重用
         *自行比较区别在哪
         *
         */
//        self.tableV.register(ASGameTableViewCell.self, forCellReuseIdentifier: "ASGameTableViewCell")
//        self.tableV.register(ASGame1TableViewCell.self, forCellReuseIdentifier: "ASGame1TableViewCell")
//        self.tableV.register(ASGame2TableViewCell.self, forCellReuseIdentifier: "ASGame2TableViewCell")
//        self.tableV.register(UINib.init(nibName: "ASGame3TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame3TableViewCell")
//        self.tableV.register(UINib.init(nibName: "ASGame4TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame4TableViewCell")
//        self.tableV.register(UINib.init(nibName: "ASGame5TableViewCell", bundle: nil), forCellReuseIdentifier: "ASGame5TableViewCell")
        view.addSubview(self.tableV)
    
    }
    
}

extension ASGameViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = ASGameTableViewCell(style: .default, reuseIdentifier: "ASGameTableViewCell")
            return cell
            
        } else if indexPath.row == 1 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: indexPath.row.description)
            print(indexPath.row.description)
            if cell == nil {
                cell = ASGame1TableViewCell(style: .default, reuseIdentifier: indexPath.row.description)
                print(cell!)

            }
            return cell!
            
        } else if indexPath.row == 2 {
            
            let cell = ASGame2TableViewCell(style: .default, reuseIdentifier: "ASGame2TableViewCell")
            return cell
        }
        else if indexPath.row == 3 {
            let cell = Bundle.main.loadNibNamed("ASGame3TableViewCell", owner: nil, options: nil)?.first as! ASGame3TableViewCell
            return cell
            
        } else if indexPath.row == 4 {
            let cell = Bundle.main.loadNibNamed("ASGame4TableViewCell", owner: nil, options: nil)?.first as! ASGame4TableViewCell
            return cell
            
        }else if indexPath.row == 9 {
            let cell = Bundle.main.loadNibNamed("ASGame5TableViewCell", owner: nil, options: nil)?.first as! ASGame5TableViewCell
            return cell
            
        } else  {
            var cell = tableView.dequeueReusableCell(withIdentifier: indexPath.row.description)
            if cell == nil {
                cell = ASGame1TableViewCell(style: .default, reuseIdentifier: indexPath.row.description)
            }
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
