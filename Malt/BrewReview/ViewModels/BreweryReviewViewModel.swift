//
//  BreweryReviewViewModel.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import Foundation

struct BreweryReviewViewModel {
    private var brewReviews: DynamicValue<[BrewReview]> //= DynamicValue(Brewery) <- You don't use this because you didn't have an initial value

    init(brewReviews: [BrewReview]) {
        self = DynamicValue(brewReviews)
    }
}

// Can you even use dynamic value the way you're trying to use it?
