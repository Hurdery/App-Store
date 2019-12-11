
//
//  ASUpdateTableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/28.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASUpdateTableViewCell: UITableViewCell {
    
    @IBOutlet weak var updateDes: UILabel!
    @IBOutlet weak var updateName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
