//
//  ASTodayViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit


/// 不需要导航栏
class ASTodayViewController: UIViewController {

   private lazy var largeTitleView: ASLargeTitleView = {
        
        let largeTitleView = ASLargeTitleView(frame: CGRect(x: 0, y: 0, width: Int(screenWidth), height: NAVIGATION_BAR_HEIGHT))
        return largeTitleView
        
    }()
    
  private lazy var tableV: UITableView = {
        
        let tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(STATUS_BAR_HEIGHT), width: screenWidth, height: screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT)), style: .plain)
        tableV.tableFooterView = UIView()
        return tableV
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
        
    }
    
    func setUI() {
        
        showActivityIndicator()
        
        self.tableV.delegate = self
        self.tableV.dataSource = self
        self.tableV.separatorStyle = .none
        self.largeTitleView.isShowTime = true
        self.largeTitleView.isShowBottomLine = false
        self.largeTitleView.headLabel.text = "Today"
        self.tableV.tableHeaderView = self.largeTitleView
        self.tableV.register(UINib(nibName: "oneTableViewCell", bundle: nil), forCellReuseIdentifier: "one")
        
    }
    
    func showActivityIndicator() {
        
        let ai = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        ai.center = self.view.center
        view.addSubview(ai)
        ai.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            ai.stopAnimating()
            ai.hidesWhenStopped = true
            self.view.addSubview(self.tableV)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    
}

extension ASTodayViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "two") as? twoTableViewCell
            if cell == nil {
                cell = twoTableViewCell(style: .default, reuseIdentifier: "two")
            }
            cell?.selectionStyle = .none
            cell?.itemClickBlock = {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveLinear, animations: {
                    cell?.backV.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
                }) { (res) in
                    cell?.backV.transform = .identity
                }
            }
            return cell!
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "one", for: indexPath)
            cell.selectionStyle = .none
            return cell
        }
        
    }
    
    /// 添加点按动画 有更好的实现效果可联系作者qq: 1589353390，共同进步

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        if (cell?.isKind(of: oneTableViewCell.self))! {
            let cell1 = cell as! oneTableViewCell
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveLinear, animations: {
                cell1.backV.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
            }) { (res) in
                cell1.backV.transform = .identity
            }
        }else{
            let cell2 = cell as! twoTableViewCell
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .curveLinear, animations: {
                cell2.backV.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
            }) { (res) in
                cell2.backV.transform = .identity
            }
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 520
    }
    
}

