//
//  MainTableViewController.swift
//  NikeStoreClone
//
//  Created by Rahmetullah on 13.06.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    //MARK:  - Properties:

    
    
    //MARK:  - LifeSycles:
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
}
    
    //MARK:  - Selectors:
    
    
    //MARK:  - Helpers:
    private func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true 
        
        
        let favorite = FavoriteController()
        favorite.tabBarItem.image = UIImage(named: "btn_favorite")
        let home = HomeController()
        home.tabBarItem.image = UIImage(named: "btn_home")
        let bucket = BucketViewController()
        bucket.tabBarItem.image = UIImage(named: "btn_buy")
        let list = ListViewController()
        list.tabBarItem.image = UIImage(named:"btn_list")
        viewControllers = [home, bucket, favorite, list]
    
    
    }
    

    
}

