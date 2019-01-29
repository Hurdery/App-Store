//
//  ASLargeTitleView.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASLargeTitleView: UIView {
    
    var timeLabel: UILabel!
    var headLabel: UILabel!
    var headImage: UIImageView!
    var bottomLine: UIView!
    var isHideImage: Bool = false
 
    var isShowTime: Bool = false {
        
        didSet {
            if isShowTime {
                timeLabel.isHidden = false
            }else{
                timeLabel.isHidden = true
                headLabel.frame.origin.y = 20
            }
        }
        
    }
    
    var isShowBottomLine: Bool = false {
        
        didSet {
            if isShowBottomLine {
                bottomLine.isHidden = false
            }else{
                bottomLine.isHidden = true
            }
        }
        
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        timeLabel = UILabel(frame: CGRect(x: 30, y: 5, width: 100, height: 15))
        timeLabel.font = UIFont.systemFont(ofSize: 12)
        timeLabel.text = AppUtils.sharedAppUtils._getCurrentDayAndTime(formatStr: "M月DD日")
        timeLabel.textColor = .lightGray
        addSubview(timeLabel)
        
        headLabel = UILabel(frame: CGRect(x: 30, y: timeLabel.frame.maxY + 5, width: 100, height: 30))
        headLabel.font = UIFont.boldSystemFont(ofSize: 30)
        headLabel.text = "Today"
        addSubview(headLabel)
        
        headImage = UIImageView(frame: CGRect(x: screenWidth - 50 - 20, y: 5, width: 50, height: 50))
        headImage.backgroundColor = commonColor
        AppUtils.sharedAppUtils._clipsViewCorner(headImage, radius: 25)
        addSubview(headImage)
        
        bottomLine = UIView(frame: CGRect(x: 30, y: self.frame.maxY - 1, width: screenWidth - 60, height: 1))
        bottomLine.backgroundColor = lineColor
        addSubview(bottomLine)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    
}
