//
//  OBDBRepository.swift
//  Malt
//
//  Created by Liana Haque on 5/5/21.
//

import Foundation
import PromiseKit

class OBDBRepository {
    
    //private let baseURL = URL(string: "https://api.openbrewerydb.org/breweries?page=0?per_page=50")!
    private let pageNumber: Int = Int()
    private let mapper = BreweryMapper()
    private var breweryAPIPayload: [BreweryAPIModel] = [BreweryAPIModel]()
    
    // MARK: TODO - Must provide cases for response and error. Have to make this func throw. The throws call functions that do the exceptions and error handling for us.
    // MARK: TODO - Write DoCatch and try block for exceptions.
    //
    // MARK: NOTE - This functiong might be doing too much.  It has side effects as well.

    // The issue we have is that we want breweries to live beyond the scope it's in... the contents of it anyways but it isn't happening.
        
    // You got this working now make it cleaner.  That's the whole point of clean code.
    func fetchBreweryDataInBatches(pageNumber: Int) -> Promise<[Brewery]> {
        var breweries: [Brewery] = [Brewery]()
        var baseURL = URL(string: "https://api.openbrewerydb.org/breweries?page=\(pageNumber)")!
        print("Page Fetch is: " + String(pageNumber))
        return Promise { seal in
            let task = URLSession.shared.dataTask(with: baseURL) { data, response, error in
                guard error == nil else { return }
                guard let data = data else { return }
                let deserializedListOfBreweryAPIModels = self.deserializeJSONIntoBreweryAPIModel(data: data.self)
                breweries = self.mapper.mapBreweryAPIModelToBreweryModel(listOfBreweryAPIModels: deserializedListOfBreweryAPIModels)
                seal.fulfill(breweries)
            }
            
            task.resume()
        }
    }

    private func deserializeJSONIntoBreweryAPIModel(data: Data) -> [BreweryAPIModel] {
        let decoder = JSONDecoder()
        breweryAPIPayload = try! decoder.decode([BreweryAPIModel].self, from: data)
        return breweryAPIPayload ?? [BreweryAPIModel]()
    }
    
}
