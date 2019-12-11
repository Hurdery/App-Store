//
//  ASGameTableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASGame2TableViewCell: UITableViewCell {
    
    var collectionV: UICollectionView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let headView = UIView(frame: CGRect(x: 0, y: 10, width: SCREENWIDTH, height: 30))
        
        let headLabel = UILabel(frame: CGRect(x: 30, y: 0, width: 230, height: 30))
        headLabel.text = "今天是腊月廿三，小年"
        headLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headView.addSubview(headLabel)
        
        let allLabel = UILabel(frame: CGRect(x: SCREENWIDTH - 85, y: 0, width: 60, height: 30))
        allLabel.text = "查看全部"
        allLabel.font = UIFont.systemFont(ofSize: 14)
        allLabel.textColor = BLUECOLOR
        headView.addSubview(headLabel)
        headView.addSubview(allLabel)

        addSubview(headView)
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 230, height: 350)

        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsetsMake(0, 30, 0, 30)
        layout.scrollDirection = .horizontal
        
        collectionV = UICollectionView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: 400), collectionViewLayout: layout)
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.backgroundColor = .clear
        collectionV.showsHorizontalScrollIndicator = false
        collectionV.register(UINib(nibName: "ASGame2CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ASGame2CollectionViewCell")
        addSubview(collectionV)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ASGame2TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ASGame2CollectionViewCell", for: indexPath)
        return cell
    }

    
}
