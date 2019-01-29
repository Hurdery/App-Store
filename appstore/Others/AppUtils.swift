//
//  AppUtils.swift
//  appstore
//
//  Created by guazhac on 2019/1/26.
//  Copyright © 2019 st. All rights reserved.
//

import UIKit

struct AppUtils {
    //单例
    static let sharedAppUtils = AppUtils()
    
    
    /// 割圆角
    ///
    /// - Parameters:
    ///   - aView: <#aView description#>
    ///   - radius: <#radius description#>
   func _clipsViewCorner(_ aView: UIView, radius: Int) {
        
        let path = UIBezierPath(roundedRect: aView.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = aView.bounds
        maskLayer.path = path.cgPath
        aView.layer.mask = maskLayer
        
    }
    
    /// 获取当前时间
    ///
    /// - Parameter formatStr: <#formatStr description#>
    /// - Returns: <#return value description#>
    func _getCurrentDate(formatStr: String) -> (String) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatStr
        return dateFormatter.string(from: Date())
        
    }
    
    /// 获取当前星期
    ///
    /// - Returns: <#return value description#>
    func _getCurrentWeak() -> (String) {
        
        let calendar: Calendar = Calendar(identifier: .gregorian)
        var comps: DateComponents = DateComponents()
        comps = calendar.dateComponents([.year,.month,.day, .weekday, .hour, .minute,.second], from: Date())
        return (comps.weekday! - 1).description
    }
    
    /// 获取时间和星期
    ///
    /// - Parameter formatStr: <#formatStr description#>
    /// - Returns: <#return value description#>
    func _getCurrentDayAndTime(formatStr: String) -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatStr
        let timeStr = dateFormatter.string(from: Date())
        
        let calendar: Calendar = Calendar(identifier: .gregorian)
        var comps: DateComponents = DateComponents()
        comps = calendar.dateComponents([.year,.month,.day, .weekday, .hour, .minute,.second], from: Date())
        
        var weekStr = ""
        switch comps.weekday! - 1 {
        case 1:
            weekStr = "星期一"
        case 2:
            weekStr = "星期二"
        case 3:
            weekStr = "星期三"
        case 4:
            weekStr = "星期四"
        case 5:
            weekStr = "星期五"
        case 6:
            weekStr = "星期六"
        case 7:
            weekStr = "星期日"
        default:
            print("")
        }
                
        return timeStr + "   \(weekStr)"
    }
    
    
    
}

