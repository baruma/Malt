//
//  BrewReviewVC.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import UIKit

class BrewReviewVC: UIViewController {
    
    var collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())

    lazy var viewModel : BreweryReviewViewModel = {
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionView()
    }
    
    func configureCollectionView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .purple
        
        collectionView.delegate = self
//        collectionView.dataSource = self
        
        collectionView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
    }

}

extension BrewReviewVC: UICollectionViewDelegate {}
