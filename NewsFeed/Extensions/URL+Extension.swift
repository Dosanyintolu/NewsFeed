//
//  URL+Extension.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/8/20.
//

import Foundation


extension URL {
    
    static func urlForTopHeadlines(for category: String) -> URL {
        return URL(string:"https://newsapi.org/v2/top-headlines?category=\(category)&country=us&apiKey=cbb3ab67d12343aeaf4090c5f9689a6d")!
    }
    
}
