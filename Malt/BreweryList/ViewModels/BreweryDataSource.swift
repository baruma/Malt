//
//  BreweryDataSource.swift
//  Malt
//
//  Created by Liana Haque on 5/16/21.
//

import Foundation
import UIKit
import PromiseKit

class GenericDataSource<T> : NSObject {
    var data: DynamicValue<[T]> = DynamicValue([])
}

// Brweery used to be an array here under the GenericDatSource
class BreweryDataSource: GenericDataSource<Brewery>, UITableViewDataSource {
    
    private var bottomScrollListener: BottomScrollListener
    
    // Observe the init
    init(bottomScrollListener: BottomScrollListener) {
        self.bottomScrollListener = bottomScrollListener  // this gets hit first thing
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BreweryTableViewCell.reuseID, for: indexPath) as! BreweryTableViewCell
        
        let brewery = self.data.value[indexPath.row]
        
        let totalRows = tableView.numberOfRows(inSection: indexPath.section)
        
        // This gets hit right at the start of the app on page 0!  This could be creating a problem
        // allows app to resume so you can view the first 20.  scroll to the bottom and this gets hit again and resumes the data flow.
        
        // bottomIndex 0 -> call initial fetch -> 25 items come in
        // bottomIndex 25 -> scroll to the bottom (item 25) -> calls atBottom -> which fetches -> we now have 50 items
        // bottomIndex 50
        
        if indexPath.row == totalRows - 1 {
            bottomScrollListener.atBottom()
        }
        
        cell.brewery = brewery
        return cell
    }
    
}

protocol BottomScrollListener {
    func atBottom()
}

/*
 1. make a class to hold onto the closure you write so PromiseKit can deliver you something it can wrap.  Call it a paginator.
 2. The closure you write in the paginator class must be able to allow the DataSource to call upon the Viewmodel function we want.
 
 but with delegation there is a sense of ownership or coupling between the code classes.
 */
