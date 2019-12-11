//
//  ASDetail8TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/5.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail8TableViewCell: UITableViewCell {
    
    @IBOutlet weak var likeCollectionV: UICollectionView!
 
         
         override func awakeFromNib() {
             super.awakeFromNib()
             layoutUI();
        }

       func layoutUI() {
        backgroundColor = COMMONCOLOR
        
             let width: CGFloat = (SCREENWIDTH - 40)
                         
                         let layout = UICollectionViewFlowLayout()
                         layout.itemSize = CGSize(width: width, height: 200)
                         layout.sectionInset = UIEdgeInsetsMake(0, 20, 0, 0)
                         layout.scrollDirection = .horizontal
                         
                         likeCollectionV.collectionViewLayout = layout
                         likeCollectionV.delegate = self
                         likeCollectionV.dataSource = self
                         likeCollectionV.backgroundColor = .clear
                         likeCollectionV.showsHorizontalScrollIndicator = false
                         likeCollectionV.register(UINib.init(nibName: "ASDetail_8CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ASDetail_8CollectionViewCell")
         }
                    
     }
      extension ASDetail8TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
              func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                  return 3
              }
              
              func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
                  let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ASDetail_8CollectionViewCell", for: indexPath)  as! ASDetail_8CollectionViewCell
                  return cell

              }
              
          }
