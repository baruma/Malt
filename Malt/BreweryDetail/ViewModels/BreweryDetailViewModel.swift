//
//  BreweryDetailViewModel.swift
//  Malt
//
//  Created by Liana Haque on 5/21/21.
//

import Foundation

class BreweryDetailViewModel {
    
    weak var mainCoordinator: MainCoordinator? = nil  // when you write this you are saying there is nothing here and that it has to be set somewhere.

    // The constructor here would be to create an init function that sets the brewery from the viewmodel to the local brwery of this file.
    private var breweryData: DynamicValue<Brewery> //= DynamicValue(Brewery) <- You don't use this because you didn't have an initial value


    // This is constuctor injection because you need to get an initial value which is your dependency.  YOu can either createa  dummy initial value or pass in an initial value when the viewmodel is made and then use that to construct the dynamic value.
    init(brewery: Brewery) {
        breweryData = DynamicValue(brewery)
    }
    
     func addBrewReviewButtonPressed() {
        mainCoordinator?.goToBrewReviewScreen()
    }
    
}
