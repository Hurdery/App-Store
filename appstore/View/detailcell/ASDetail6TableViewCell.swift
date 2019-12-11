//
//  ASDetail6TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/5.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail6TableViewCell: UITableViewCell {

      lazy var tableCell: UITableView = {
              
              let tableCell = UITableView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH - 20, height: 11*44 + 50 + 26), style: .plain)
              return tableCell
              
          }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layoutUI();
    }

  func layoutUI() {
    
          tableCell.delegate = self
          tableCell.dataSource = self
          addSubview(tableCell)
    
          tableCell.register(UINib.init(nibName: "ASDetail_6TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail_6TableViewCell")

    }
               
}
extension ASDetail6TableViewCell: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail_6TableViewCell") as? ASDetail_6TableViewCell
        cell?.cellIndex = indexPath.row
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headV = UIView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: 50))
        let headLabel = UILabel(frame: CGRect(x: 20, y: 0, width: 100, height: 50))
        headLabel.text = "信息"
        headLabel.font = .boldSystemFont(ofSize: 24)
        headV .addSubview(headLabel)
        return headV
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 10 {
            return 70
        }
        return 44
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
