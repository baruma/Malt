//
//  BrewReviewVC.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import UIKit

class BrewReviewVC: UIViewController {
    
    var collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())

    lazy var dataSource: BrewReviewDataSource = BrewReviewDataSource()
    
    lazy var viewModel : BrewReviewViewModel = {
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    func configureCollectionView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .black
        
        collectionView.delegate = self
        collectionView.dataSource = dataSource
        
        collectionView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        UIView.setAnimationsEnabled(true)
        collectionView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}

extension BrewReviewVC: UICollectionViewDelegate {}
