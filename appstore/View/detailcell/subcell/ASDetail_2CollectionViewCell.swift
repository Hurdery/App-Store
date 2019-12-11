//
//  ASDetail2CollectionViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/4.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail_2CollectionViewCell: UICollectionViewCell {
    
    var imageV: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageV = UIImageView(frame:self.bounds)
        imageV.backgroundColor = COMMONCOLOR
        imageV.layer.cornerRadius = 10
        imageV.layer.masksToBounds = true
        addSubview(imageV)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("\(NSStringFromCGRect(self.frame))")
    }
    
}
