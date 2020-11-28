//
//  UIView+Extension.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/23/20.
//

import Foundation
import UIKit

extension UIView {
    
    static func viewForTableViewHeader(subtitle: String) -> UIView {
        
        let screenRect = UIScreen.main.bounds
        let subTitleView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        let subTitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        
        subTitleLabel.text = subtitle
        subTitleLabel.textAlignment = .center
        subTitleLabel.textColor = UIColor.gray
        
        subTitleView.addSubview(subTitleLabel)
        return subTitleView
    }
    
    static func viewForSectionHeader(title: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        let headerView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 60)))
        
        headerView.backgroundColor = UIColor.white
        
        let sectionHeaderLabel = UILabel(frame: headerView.frame)
        sectionHeaderLabel.text = title
        sectionHeaderLabel.textAlignment = .center
        sectionHeaderLabel.textColor = UIColor.gray
        
        headerView.addSubview(sectionHeaderLabel)
        return headerView
    }
}
