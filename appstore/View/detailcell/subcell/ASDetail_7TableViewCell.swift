//
//  ASDetail_7TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/6.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail_7TableViewCell: UITableViewCell {

       @IBOutlet weak var cellTitle: UILabel!

       @IBOutlet weak var cellContent: UILabel!
       
       @IBOutlet weak var cellImage: UIImageView!
    
    public  var cellIndex: Int? {
     
     didSet {
         
        switch cellIndex! {
        case 0:
            cellTitle.text = "Siri"
            cellContent.text = "通过Siri来使用此App，帮你处理各项事务"
        case 1:
            cellTitle.text = "钱包"
            cellContent.text = "集中管理所有凭证最简单的方式"
        default:
            cellTitle.text = "家人共享"
            cellContent.text = "启用“家人共享”后，最多六位家庭成员可以使用此App。家庭成员不能共享App内购买。"

        }
    
     }
     
     }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
