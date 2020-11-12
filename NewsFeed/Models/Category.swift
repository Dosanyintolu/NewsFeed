//
//  Category.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/8/20.
//

import Foundation


struct Category {
    let title: String
    let articles: [Article]
    
    static func all() -> [String] {
        return ["Business", "Entertainment", "General", "Sports"]
    }
    
}
