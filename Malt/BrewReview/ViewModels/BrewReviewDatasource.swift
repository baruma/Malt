//
//  BrewReviewDatasource.swift
//  Malt
//
//  Created by Liana Haque on 6/14/21.
//

import Foundation
import UIKit

class BrewReviewDataSource: GenericDataSource<BrewReview>, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        
        return cell
    }

}
