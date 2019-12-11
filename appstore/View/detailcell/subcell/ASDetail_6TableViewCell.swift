//
//  ASDetail_6TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/5.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail_6TableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!

    @IBOutlet weak var cellContent: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    
    @IBOutlet weak var contentRightConst: NSLayoutConstraint!
    
    var ary: [String] = ["供应商","大小","类别","兼容性","位置","语言","年龄分级","App内购买项目","版权","开发者网站","隐私政策"]
    var ary1: [String] = ["三国志通俗演义","100 MB","逸致","可在此iPhone上使用","会使用位置","简体中文","17+","是","Copyright ©️ 2018 - 2019 CB_MD","",""]
    var ary2: [String] = ["chevron.down","","","chevron.down","chevron.down","chevron.down","chevron.down","chevron.down","chevron.down","safari","hand"]

    
    //safari hand.raised.fill chevron.down
    public  var cellIndex: Int? {
    
    didSet {
        
        cellTitle.text = ary[cellIndex!]
        
        cellContent.text = ary1[cellIndex!]

        cellImage.image = UIImage(named: ary2[cellIndex!])
        
        if cellIndex! == 1 || cellIndex! == 2 {
            contentRightConst.constant = 10
        } else {
            contentRightConst.constant = 35
        }
        
    }
    
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }



    
    
}
