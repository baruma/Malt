//
//  MainCoordinator.swift
//  Malt
//
//  Created by Liana Haque on 5/20/21.
//

import Foundation
import UIKit

// MARK:  TODO - Make a better name for this class.

class MainCoordinator: Coordinator {
    
    private let rootViewController: UINavigationController
    private let window: UIWindow
    
    init(window: UIWindow) {
       self.window = window
       self.rootViewController = UINavigationController()
    }
    
    func start() {
        window.rootViewController = rootViewController
        let breweryListVC = BreweryListVC(nibName: nil, bundle: nil)
        breweryListVC.setCoordinator(coordinator: self)
        rootViewController.pushViewController(breweryListVC, animated: true)
        window.makeKeyAndVisible()
    }
    
    func goToBreweryDetailScreen(brewery: Brewery) {
        let breweryDetailVC = BreweryDetailVC()
        breweryDetailVC.selectedBrewery = brewery
        
        let viewModel = BreweryDetailViewModel(brewery: brewery)
        breweryDetailVC.setCoordinator(coordinator: self)
        rootViewController.pushViewController(breweryDetailVC, animated: true)
    }
    
     func goToBrewReviewScreen() {
        let brewReviewVC = BrewReviewVC()
        print("Going to BrewReview Screen")
        rootViewController.pushViewController(brewReviewVC, animated: true)
    }
    
    func back() {
        rootViewController.popViewController(animated: true)
    }
    
}
