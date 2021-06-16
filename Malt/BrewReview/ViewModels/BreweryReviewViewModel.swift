//
//  BreweryReviewViewModel.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import Foundation
import UIKit

struct BreweryReviewViewModel {
    private var brewReviews: DynamicValue<[BrewReview]> //= DynamicValue(Brewery) <- You don't use this because you didn't have an initial value

    //weak var mainCoordinator: MainCoordinator? = nil

    init(brewReviews: [BrewReview]) {
        // the brewery reviews coming into the init is made dynamic and is set to the class property    
        self.brewReviews = DynamicValue(brewReviews)
    }
    
}
