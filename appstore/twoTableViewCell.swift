 //
//  twoTableViewCell.swift
//  appstore
//
//  Created by guazhac on 2019/1/16.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

 let screenWidth = UIScreen.main.bounds.size.width
 let screenHeight = UIScreen.main.bounds.size.height
 
class twoTableViewCell: UITableViewCell {
    
    var backV: UIView!
    var collectionV: UICollectionView!
    var page: Int = 0
    var colorAry: [UIColor] = []
    var collectionAry: [UICollectionView] = []
    var itemClickBlock: (() -> Void)?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.init(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1)
        
        backV = UIView(frame: CGRect(x: 20, y: 20, width: screenWidth - 40, height: 480))
        backV.backgroundColor = UIColor.white
        backV.layer.masksToBounds = true
        backV.layer.cornerRadius = 15
        contentView.addSubview(backV)
        
        let alabel = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 20))
        alabel.text = "超级实用"
        alabel.textColor = .gray
        backV.addSubview(alabel)
        
        let ablabel = UILabel(frame: CGRect(x: 20, y: alabel.frame.maxY + 15, width: 300, height: 20))
        ablabel.text = "地球人都在用，用了都说好"
        ablabel.font = UIFont.boldSystemFont(ofSize: 20)
        backV.addSubview(ablabel)
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 125, height: 115)
        layout.minimumLineSpacing = 10
        layout.scrollDirection = .horizontal
        
        let cheight = 115
        
        for index in 0...2 {
            let randomColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1.0)
            collectionV = UICollectionView(frame: CGRect(x: 0, y: Int(ablabel.frame.maxY) + 20 + index * (cheight + 10), width: Int(backV.frame.size.width ), height: cheight), collectionViewLayout: layout)
            collectionV.delegate = self
            collectionV.dataSource = self
            collectionV.tag = index
            collectionV.backgroundColor = .clear
            collectionV.showsHorizontalScrollIndicator = false
            //只能自动 拒绝手动
            collectionV.isScrollEnabled = false;
            backV.addSubview(collectionV)
            collectionAry.append(collectionV)
            colorAry.append(randomColor)
            collectionV.register(UICollectionViewCell.self, forCellWithReuseIdentifier: index.description)
        }
        
        let timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(startAutoScroll), userInfo: nil, repeats: true)
        RunLoop.main.add(timer, forMode: .UITrackingRunLoopMode)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    /// 目前只能想到这种方法，可以实现collectionView连续滚动。如有更好的方法，希望联系本作者，积极交流，共求上进。、
    
    /// qq: 1589353390
    @objc func startAutoScroll() {
        
         page += 1
        
        for index in 0...2 {
            let collectionView = collectionAry[index]
            collectionView.setContentOffset(CGPoint(x: (10 + index) * page, y: 0), animated: true)
        }
    }
}
 
 extension twoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
          switch collectionView.tag {
      
          case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
          case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
          case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionView.tag.description, for: indexPath)
            cell.backgroundColor = colorAry[collectionView.tag]
            cell.layer.cornerRadius = 10
            return cell
           default:
            print("")
          }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        itemClickBlock!()
    }
    
 }
 
