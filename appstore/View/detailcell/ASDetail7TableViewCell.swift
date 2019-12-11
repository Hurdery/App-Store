//
//  ASDetail7TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/5.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail7TableViewCell: UITableViewCell {
      lazy var tableCell: UITableView = {
                  
                  let tableCell = UITableView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH - 20, height: 300), style: .plain)
                  return tableCell
                  
              }()
        
        
        override func awakeFromNib() {
            super.awakeFromNib()
            layoutUI();
          

        }

      func layoutUI() {
        
              tableCell.delegate = self
              tableCell.dataSource = self
              tableCell.rowHeight = 70
              addSubview(tableCell)
              tableCell.separatorStyle = .none
              tableCell.register(UINib.init(nibName: "ASDetail_7TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail_7TableViewCell")

        }
                   
    }
    extension ASDetail7TableViewCell: UITableViewDelegate,UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail_7TableViewCell") as? ASDetail_7TableViewCell
            cell?.cellIndex = indexPath.row
            return cell!
        }
        
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            
            let headV = UIView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: 50))
            let headLabel = UILabel(frame: CGRect(x: 20, y: 0, width: 100, height: 50))
            headLabel.text = "支持"
            headLabel.font = .boldSystemFont(ofSize: 24)
            headV .addSubview(headLabel)
            return headV
        }
        
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 50
        }
    
}
