//
//  BrewReviewVC.swift
//  Malt
//
//  Created by Liana Haque on 6/11/21.
//

import UIKit

class BrewReviewVC: UIViewController {
    
    var tableView: UITableView = UITableView(frame: .zero)

    lazy var dataSource: BrewReviewDataSource = BrewReviewDataSource()
    
    lazy var viewModel : BrewReviewViewModel = {
        return viewModel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
      //  tableView.register(BaseInfoCell.self, forCellWithReuseIdentifier: BaseInfoCell.reuseID)
        
        tableView.backgroundColor = .black
        
        tableView.delegate = self
        tableView.dataSource = dataSource
        
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        UIView.setAnimationsEnabled(true)
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}

extension BrewReviewVC: UITableViewDelegate {}
