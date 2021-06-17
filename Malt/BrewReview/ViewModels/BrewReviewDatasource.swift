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
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let baseInfoCell = collectionView.dequeueReusableCell(withReuseIdentifier: BaseInfoCell.reuseID, for: indexPath) as! BaseInfoCell
        
        return baseInfoCell
    }
}
