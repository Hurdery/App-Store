//
//  ASDetailViewController.swift
//  appstore
//
//  Created by guazhac on 2019/12/2.
//  Copyright © 2019 CB_MD. All rights reserved.
//

import UIKit

class ASDetailViewController: UIViewController {

    let headImageHeight :CGFloat = 200.0
    var headImageView: UIImageView!
    var headView: UIView!

    lazy var detailTableV: UITableView = {
          
          let detailTableV = UITableView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: SCREENHEIGHT), style: .plain)
          return detailTableV
          
      }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //主列表
        setupMainTabelView();
        
        //导航栏
        setupNav()

    }
    
    func setupNav() {
        
        let navBackBtn = UIButton(type: .custom);
        navBackBtn.frame = CGRect(x: 20, y: STATUS_BAR_HEIGHT + 10, width: 30, height: 30)
        navBackBtn.setImage(UIImage(named: "nav_back"), for: .normal)
        navBackBtn.addTarget(self, action: #selector(navBackAction), for: .touchUpInside)
        view.addSubview(navBackBtn)
        
        let navImage = UIImageView(frame: CGRect(x: self.view.center.x - 17.5, y: (CGFloat)(STATUS_BAR_HEIGHT + 10), width: 35, height: 35))
        navImage.backgroundColor = .lightGray
        AppUtils.sharedAppUtils._clipsViewCorner(navImage, radius: 10)
        
        let navView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 64))
        navView.backgroundColor = .red
        navigationItem.titleView = navImage
        
        let rightBtn = UIButton(type: .custom)
        rightBtn.setTitle("打开", for: .normal)
        rightBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        rightBtn.backgroundColor = .systemBlue
        rightBtn.frame = CGRect(x: 0, y: 0, width: 80, height: 30)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        AppUtils.sharedAppUtils._clipsViewCorner(rightBtn, radius: 10)

        
    }
    
    func setupMainTabelView (){
        
        self.detailTableV.frame = CGRect(x: 0, y: 0, width: SCREENWIDTH, height: SCREENHEIGHT)
        self.detailTableV.delegate = self
        self.detailTableV.dataSource = self
        self.detailTableV.backgroundColor = COMMONCOLOR
        view.addSubview(self.detailTableV) 
        
        // 9种类型
        self.detailTableV.register(UINib.init(nibName: "ASDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetailTableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail1TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail1TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail2TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail2TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail3TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail3TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail4TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail4TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail5TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail5TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail6TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail6TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail7TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail7TableViewCell")
        self.detailTableV.register(UINib.init(nibName: "ASDetail8TableViewCell", bundle: nil), forCellReuseIdentifier: "ASDetail8TableViewCell")
        //默认的cell
        self.detailTableV.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")

        // 头部下拉放大
        let headView = UIView(frame: CGRect(x: 0, y: 0, width: SCREENWIDTH, height: headImageHeight))
        headImageView = UIImageView(frame: headView.bounds)
        headImageView.image = UIImage(named: "md")
        headImageView.contentMode = .scaleAspectFill
        headImageView.layer.masksToBounds = true
        headView.addSubview(headImageView)
        self.detailTableV.tableHeaderView = headView

    }

    @objc func navBackAction() {
        navigationController?.popViewController(animated: true)
    }
    
}

extension ASDetailViewController: UITableViewDelegate,UITableViewDataSource {
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 9
      }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if indexPath.row == 0 {
             let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetailTableViewCell") as? ASDetailTableViewCell
             return cell!
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail1TableViewCell") as? ASDetail1TableViewCell
            return cell!
        } else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail2TableViewCell") as? ASDetail2TableViewCell
            return cell!
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail3TableViewCell") as? ASDetail3TableViewCell
            return cell!
        } else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail4TableViewCell") as? ASDetail4TableViewCell
            return cell!
        } else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail5TableViewCell") as? ASDetail5TableViewCell
            return cell!
        } else if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail6TableViewCell") as? ASDetail6TableViewCell
            return cell!
        } else if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail7TableViewCell") as? ASDetail7TableViewCell
            return cell!
        } else if indexPath.row == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ASDetail8TableViewCell") as? ASDetail8TableViewCell
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
                return cell!
        }
      }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 2 {
            return 500
        } else if indexPath.row == 3  {
            return 150
        } else if indexPath.row == 4 { 
            return 160
        } else if indexPath.row == 5 {
                   return 320
        } else if indexPath.row == 6 {
            return 11*44+50+26
        } else if indexPath.row == 7 {
            return 300
        } else if indexPath.row == 8 {
            return 250
        }
        return 200
     }
     
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offsetY = scrollView.contentOffset.y
//        print("scrollViewDidScroll======="+"\(offsetY)")

        if offsetY < 0 {

            let allOffset = abs(offsetY) * 1.0 + headImageHeight
            let ratio = allOffset / headImageHeight
            headImageView.frame = CGRect(x: -1 * (SCREENWIDTH * ratio - SCREENWIDTH) / 2, y: offsetY, width: SCREENWIDTH * ratio, height: allOffset)

           navigationController?.navigationBar.isHidden = true

        } else {
            if offsetY > 100 {
                          navigationController?.navigationBar.isHidden = false

            }  else {
                          navigationController?.navigationBar.isHidden = true
            }

        }
    }

    
}
