//
//  BreweryReviewViewModel.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import Foundation
import UIKit

struct BrewReviewViewModel {
   private var brewReviews: DynamicValue<[BrewReview]> 
    
   init(brewReviews: [BrewReview]) {
        self.brewReviews = DynamicValue(brewReviews)
    }
    
}
