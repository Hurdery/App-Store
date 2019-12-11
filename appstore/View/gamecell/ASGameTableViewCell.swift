//
//  ASGameTableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

//点击item回调
protocol ASGameCollectionViewCellDelegate: class {
    func didClickASGameCollectionViewCellItem()
}

class ASGameTableViewCell: UITableViewCell {

    weak var delegate: ASGameCollectionViewCellDelegate?
    var collectionV: UICollectionView!
    
        override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
            
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: SCREENWIDTH - 60, height: 480)
            layout.minimumLineSpacing = 10
            layout.sectionInset = UIEdgeInsetsMake(0, 30, 0, 30)
            layout.scrollDirection = .horizontal
            
                collectionV = UICollectionView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: 480), collectionViewLayout: layout)
                collectionV.delegate = self
                collectionV.dataSource = self
                collectionV.backgroundColor = .clear
                collectionV.showsHorizontalScrollIndicator = false
                collectionV.register(UINib(nibName: "ASGameCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ASGameCollectionViewCell")
                addSubview(collectionV)
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
}
    
extension ASGameTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 100
        }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ASGameCollectionViewCell", for: indexPath)
            return cell
        }
    
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            delegate?.didClickASGameCollectionViewCellItem()
            
        }
    
        
}
