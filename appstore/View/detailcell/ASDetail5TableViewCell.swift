//
//  ASDetail5TableViewCell.swift
//  appstore
//
//  Created by admin on 2019/12/5.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ASDetail5TableViewCell: UITableViewCell {

    @IBOutlet weak var commentCollectionV: UICollectionView!
    var arrangeA: [String] = ["各省、自治区、直辖市人民政府，国务院各部委、各直属机构：经国务院批准，现将2020年元旦、春节、清明节、劳动节、端午节、国庆节和中秋节放假调休日期的具体安排通知如下：","一、元旦：2020年1月1日放假，共1天。二、春节：1月24日至30日放假调休，共7天。1月19日（星期日）、2月1日（星期六）上班。 三、清明节：4月4日至6日放假调休，共3天。"," 四、劳动节：5月1日至5日放假调休，共5天。4月26日（星期日）、5月9日（星期六）上班。  五、端午节：6月25日至27日放假调休，共3天。6月28日（星期日）上班。六、国庆节、中秋节：10月1日至8日放假调休，共8天。9月27日（星期日）、10月10日（星期六）上班。"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layoutUI();


    }
    func layoutUI() {
                
                let width: CGFloat = (SCREENWIDTH - 10 - 20 - 10)
                
                let layout = UICollectionViewFlowLayout()
                layout.itemSize = CGSize(width: width, height: 200)
                layout.minimumLineSpacing = 10
                layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 10)
                layout.scrollDirection = .horizontal
                
                commentCollectionV.collectionViewLayout = layout
                commentCollectionV.delegate = self
                commentCollectionV.dataSource = self
                commentCollectionV.backgroundColor = .clear
                commentCollectionV.showsHorizontalScrollIndicator = false
                commentCollectionV.register(UINib.init(nibName: "ASDetail_3CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ASDetail_3CollectionViewCell")
                
            }
            
        }

        extension ASDetail5TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return 3
            }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"ASDetail_3CollectionViewCell", for: indexPath)  as! ASDetail_3CollectionViewCell
                cell.backgroundColor = COMMONCOLOR
                cell.contentLabel.text = arrangeA[indexPath.item]
                return cell

            }
            
        }
