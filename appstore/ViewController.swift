//
//  ViewController.swift
//  appstore
//
//  Created by guazhac on 2019/1/16.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview .register(UINib(nibName: "oneTableViewCell", bundle: nil), forCellReuseIdentifier: "one")
        tableview.rowHeight = 520

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
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
    
    /// 添加点按动画
    /// 目前这种比较生硬，无奈作者是个zhazha，希望有高人指点
    /// qq: 1589353390

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
    
}
