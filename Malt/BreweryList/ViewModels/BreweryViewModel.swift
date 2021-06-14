//
//  BreweryViewModel.swift
//  Malt
//
//  Created by Liana Haque on 5/13/21.
//

import Foundation
import PromiseKit

class BreweryViewModel {
    
    private var repository: OBDBRepository = OBDBRepository()
    weak var dataSource : GenericDataSource<Brewery>?
    
    weak var mainCoordinator: MainCoordinator? = nil
    
    var pageNumber: Int = 1

    private var isFetchingNextPage = false
    
    init(dataSource : GenericDataSource<Brewery>?) {
        self.dataSource = dataSource
    }
    
    func loadNextPage() {
        print("Page number now is: " + String(pageNumber))  // it is incrementing
        if (isFetchingNextPage) {
            return
        }
        repository.fetchBreweryDataInBatches(pageNumber: pageNumber).done { breweries in
            self.dataSource?.data.value += breweries
            self.isFetchingNextPage = false
            self.pageNumber += 1
            print(self.dataSource?.data.value.count)
            print("Page Number is:" + String(self.pageNumber))
        }.catch { error in
            self.isFetchingNextPage = false // The error block resets the state to be able to fetch again.  
        }
        isFetchingNextPage = true
    }
    
    func brewerySelection(brewery: Brewery) {
        mainCoordinator?.goToBreweryDetailScreen(brewery: brewery)
    }
    
}
