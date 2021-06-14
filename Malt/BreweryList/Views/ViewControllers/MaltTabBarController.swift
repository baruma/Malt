//
//  MaltTabBarController.swift
//  Malt
//
//  Created by Liana Haque on 4/21/21.
//

import UIKit

class MaltTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemYellow
        viewControllers = [createBreweryNC()]
        
    }
    func createBreweryNC() -> UINavigationController {
        let breweryVC        = BreweryListVC()
        breweryVC.title      = "Breweries"
        breweryVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: breweryVC)
    }

}
