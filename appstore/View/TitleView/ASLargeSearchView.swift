//
//  ASLargeTitleView.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

protocol searchTfDelegate: class {
    
    func searchTfDidBeginEditing()
}


class ASLargeSearchView: UIView, UITextFieldDelegate {
    
   weak var searchDelegate: searchTfDelegate?
    
    
    var searchLabel: UILabel!
    var searchTf: UITextField!

    override init(frame: CGRect) {
        super.init(frame: frame)
        searchLabel = UILabel(frame: CGRect(x: 0, y: 10, width: 100, height: 30))
        searchLabel.font = UIFont.boldSystemFont(ofSize: 30)
        searchLabel.text = "Search"
        addSubview(searchLabel)
        
        searchTf = UITextField(frame: CGRect(x: 0, y: searchLabel.frame.maxY + 10, width: screenWidth - 60, height: 40))
        searchTf.backgroundColor = commonColor
        AppUtils.sharedAppUtils._clipsViewCorner(searchTf, radius: 10)
        searchTf.placeholder = "App Store"
        searchTf.leftView = UIImageView(image: UIImage(named: "searchtf"))
        searchTf.leftViewMode = .always
        searchTf.delegate = self
        searchTf.isEnabled = false
        addSubview(searchTf)
        
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapCLick))
        addGestureRecognizer(tapGes)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //为什么不在这里写呢？？ 试试你就知道了
    }
    
   @objc func tapCLick() {
        searchDelegate?.searchTfDidBeginEditing()
    }
    
}
