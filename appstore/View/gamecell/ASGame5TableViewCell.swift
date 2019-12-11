//
//  ASGame5TableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/28.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASGame5TableViewCell: UITableViewCell {

    @IBOutlet weak var tableV: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        tableV.delegate = self
        tableV.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

    extension ASGame5TableViewCell: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            }
            cell?.textLabel?.text = ["绑定支付宝、微信支付或银联卡", "App Store 家长指南", "进一步了解App内购买项目", "儿童类App和游戏", "关于个性化", "轻松上手 App Store"][indexPath.row]
            cell?.textLabel?.textColor = BLUECOLOR
            cell?.imageView?.image = UIImage(named: "火锅")
            return cell!
            
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 50
        }
}
