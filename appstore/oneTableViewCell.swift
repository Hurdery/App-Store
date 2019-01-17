//
//  oneTableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/16.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class oneTableViewCell: UITableViewCell {
    @IBOutlet weak var backV: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.init(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
