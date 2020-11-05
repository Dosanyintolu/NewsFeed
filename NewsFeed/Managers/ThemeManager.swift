//
//  ThemeManager.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/3/20.
//

import Foundation
import UIKit

class ThemeManager {
    
    static func setup() {
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
    
    
    
}
