//
//  Article.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/8/20.
//

import Foundation


struct NewsSourceResponse: Codable {
    let articles: [Article]
}


struct Article: Codable {
    
    let title: String
    let description: String?
    let url: String?
    let imageURL: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case description
        case url
        case imageURL = "urlToImage"
    }
}
    
    extension Article {
        static func by(_ category: String) -> Resource<[Article]> {
            
            return Resource<[Article]>(url: URL.urlForTopHeadlines(for: category)) { (data) -> [Article]? in
                return try! JSONDecoder().decode(NewsSourceResponse.self, from: data).articles
            }
        }
    }
