//
//  ASNavSearchView.swift
//  appstore
//
//  Created by guazhac on 2019/1/28.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

protocol cancelBtnDelegate: class {
    func didClickCancelBtn()
}


class ASNavSearchView: UIView, UITextFieldDelegate {
    
    weak var cancelDelegate: cancelBtnDelegate?
    
    var searchLabel: UILabel!
    var searchTf: UITextField!

    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .brown

        searchTf = UITextField(frame: CGRect(x: 20, y: STATUS_BAR_HEIGHT , width: Int(screenWidth - 100), height: 40))
        searchTf.backgroundColor = commonColor
        AppUtils.sharedAppUtils._clipsViewCorner(searchTf, radius: 10)
        searchTf.placeholder = "App Store"
        searchTf.leftView = UIImageView(image: UIImage(named: "searchtf"))
        searchTf.leftViewMode = .always
        searchTf.returnKeyType = .search
        searchTf.delegate = self
        addSubview(searchTf)
        
        let cancelBtn = UIButton(type: .custom)
        cancelBtn.frame = CGRect(x: screenWidth - 50, y: searchTf.center.y - 10, width: 40, height: 20)
        cancelBtn.setTitle("取消", for: .normal)
        cancelBtn.setTitleColor(blueColor, for: .normal)
        cancelBtn.addTarget(self, action: #selector(cancelClick), for: .touchUpInside)
        addSubview(cancelBtn)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func cancelClick() {
        cancelDelegate?.didClickCancelBtn()
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        searchDelegate?.searchTfDidBeginEditing()
    }
    
}
