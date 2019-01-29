//
//  ASGame4TableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/28.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASGame4TableViewCell: UITableViewCell {

    @IBOutlet weak var hotTab: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hotTab.delegate = self
        hotTab.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ASGame4TableViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = ["蒸煮油煎炸炒熬", "蒸油煮煎炸炒熬", "蒸煎煮油炸炒熬", "蒸炸煮油煎炒熬", "蒸炒煮油煎炸熬", "蒸煮熬油煎炸炒"][indexPath.row]
        cell?.textLabel?.textColor = blueColor
        cell?.imageView?.image = UIImage(named: "火锅")
        return cell!
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
}
