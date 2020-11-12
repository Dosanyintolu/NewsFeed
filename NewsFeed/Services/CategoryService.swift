//
//  CategoryService.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/8/20.
//

import Foundation



class CategoryService {
    
    func getAllHeadlinesForAllCategories(completion: @escaping ([Category]) -> Void) {
        var categories = [Category]()
        var requestCount = 0
        let categoryCount = Category.all().count
        
        for category in Category.all() {
            Webservice().load(Article.by(category)) { (articles) in
                requestCount += 1
                guard let articles = articles else {
                    return
                }
                
                let category = Category(title: category, articles: articles)
                categories.append(category)
                
                if requestCount == categoryCount {
                    DispatchQueue.main.async {
                        completion(categories)
                    }
                }
            }
        }
    }
    
}
