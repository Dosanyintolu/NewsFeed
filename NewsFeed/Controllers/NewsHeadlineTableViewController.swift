//
//  NewsHeadlineTableViewController.swift
//  NewsFeed
//
//  Created by Doyinsola Osanyintolu on 11/3/20.
//

import Foundation
import UIKit

class NewsHeadlineTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
