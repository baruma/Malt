//
//  BrewReview.swift
//  Malt
//
//  Created by Liana Haque on 6/13/21.
//

import Foundation

struct BrewReview {
    private var baseInfo: BaseInfo
    private var appearance: Appearance
    // Aroma
    // FlavorAndAppearance
}

/*
 This is the overall object I'r making.  The problem is that there are many components to the Review system that if I were to throw them all here
 it wouldn't make any sense.
 
 BrewReview {
    BaseInfo
    Appearance
    Aroma
    Flavor & Aftertaste
    Overall Desirability
 }
 
 Base Info
    - Name
    - Style
    - Overall Desirability
 
 Appearance
    - Color Scale (Wheat - Black)
    - Clarity
    - Foam Retention
    - Foam Head Texture
    - Carbonation
    - Notes
 
 Aroma
    - Intensity
    - Alcohol Detectable?
        - Yes/No -> If yes, strength
    - Malt Aroma (Tags)
    - Hop Aroma (Tags)
    - Notes
 
 Flavor & Aftertaste
    - Intensity
    - Malt Flavour (Tags)
    - Hops Flavor (Tags)
    - Hop Bitterness
    - Malt Sweetness
    - Notes
 
 Overall Desirability
 */
