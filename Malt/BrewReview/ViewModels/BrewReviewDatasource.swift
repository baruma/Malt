//
//  BrewReviewDatasource.swift
//  Malt
//
//  Created by Liana Haque on 6/14/21.
//

import Foundation
import UIKit

class BrewReviewDataSource: GenericDataSource<BrewReview>, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
}
