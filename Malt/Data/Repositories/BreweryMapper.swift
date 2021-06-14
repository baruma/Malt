//
//  BreweryMapper.swift
//  Malt
//
//  Created by Liana Haque on 5/6/21.
//

import Foundation

/// This is a Mapper for Brewery and Brewery related models.
/// If you are creating models for other classes (i.e. Beer specific, Map specific, etc. classes) then please create another Mapper file for them.
class BreweryMapper {
    func mapBreweryAPIModelToBreweryModel(listOfBreweryAPIModels: [BreweryAPIModel]) -> [Brewery] {
        var mappedBreweries = [Brewery]()
        for brewery in listOfBreweryAPIModels {
            /// TODO: Handle the optional cases better here.
            mappedBreweries.append(Brewery(
                                    id: brewery.id ?? 0,
                                    name: brewery.name ?? "",
                                    breweryType: brewery.breweryType ?? "Brewery Unavailable",
                                    street: brewery.street ?? "Street Unavailable",
                                    city: brewery.city ?? "City Unavailable",
                                    state: brewery.state ?? "Brewery Unavailable",
                                    postalCode: Int(brewery.postalCode ?? "Postal Code Unavailable") ?? 0,
                                    country: brewery.country ?? "Country Unavailable",
                                    latitude: Double(brewery.latitude ?? "Latitude Unavailable") ?? 0.0,
                                    longitude: Double(brewery.longitude ?? " Longitude Unavailable") ?? 0.0,
                                    phone: Int(brewery.phone ?? "Phone Unavailable") ?? 0,
                                    website: brewery.website ?? "Website Unavailable"))
        }
        return mappedBreweries
    }
    
}

