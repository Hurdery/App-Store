//
//  ASGameViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASUpdateViewController: ASBaseViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUI()
        
    }
    
    fileprivate func setUI() {
        
        self.tableV.delegate = self
        self.tableV.dataSource = self
        self.largeTitleView.isShowTime = false
        self.largeTitleView.isShowBottomLine = true
        self.largeTitleView.headLabel.text = "Update"
        self.tableV.tableHeaderView = self.largeTitleView
        self.tableV.estimatedRowHeight = 100
        self.tableV.rowHeight = UITableViewAutomaticDimension
        self.tableV.register(UINib.init(nibName: "ASUpdateTableViewCell", bundle: nil), forCellReuseIdentifier: "ASUpdateTableViewCell")
        self.tableV.register(UINib.init(nibName: "ASUpdate1TableViewCell", bundle: nil), forCellReuseIdentifier: "ASUpdate1TableViewCell")
        view.addSubview(self.tableV)
        
    }
    
}

extension ASUpdateViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASUpdateTableViewCell") as? ASUpdateTableViewCell
            cell?.updateDes.text = "走过路过，不要错过\n更不了吃亏，更不了上当"
            return cell!
            
        } else  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASUpdate1TableViewCell") as? ASUpdate1TableViewCell
            cell?.updateDes.text = "走过路过，不要错过\n更不了吃亏，更不了上当"
            return cell!
        }
        
    }

    
}
