//
//  ASDetail2TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/4.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail2TableViewCell: UITableViewCell {

    @IBOutlet weak var previewCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()

        layoutUI();


    }
    func layoutUI() {
        
        let width: CGFloat = (SCREENWIDTH - 10 - 40) / 1.5
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: width, height: 400)
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsetsMake(0, 20, 0, 10)
        layout.scrollDirection = .horizontal
        
        previewCollectionView.collectionViewLayout = layout
        previewCollectionView.delegate = self
        previewCollectionView.dataSource = self
        previewCollectionView.backgroundColor = .clear
        previewCollectionView.showsHorizontalScrollIndicator = false
        previewCollectionView.register(ASDetail_2CollectionViewCell.self, forCellWithReuseIdentifier:"ASDetail_2CollectionViewCell")
        
        
    }
    
}

extension ASDetail2TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ASDetail_2CollectionViewCell", for: indexPath)  as! ASDetail_2CollectionViewCell
        return cell

    }
    
}

