//
//  UIImage+Extension.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/22/20.
//

import Foundation
import UIKit


extension UIImage {
    
    static func imageForPlaceholder() -> UIImage {
        return UIImage(named: "placeholder")!
    }
    
    static func imageForHeadline(url: String, completion: @escaping (UIImage) -> Void) {
        
        guard let imageURL = URL(string: url) else {
            completion(UIImage.imageForPlaceholder())
            return
        }
        
        
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: imageURL) {
                if let downloadImage = UIImage(data: data) {
                    completion(downloadImage)
                }
            }
        }
    }
    
}
