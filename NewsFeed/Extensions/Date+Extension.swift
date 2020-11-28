//
//  Date+Extension.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/23/20.
//

import Foundation


extension Date {
    static func dateAsStringForTableViewHeader() -> String {
        let formatter =  DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter.string(from: Date())
    }
}
