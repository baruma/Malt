//
//  BreweryVC.swift
//  Malt
//
//  Created by Liana Haque on 4/22/21.
//

import UIKit

class BreweryListVC: UIViewController, BottomScrollListener {

    // This is new
    lazy var dataSource: BreweryDataSource = { 
       return  BreweryDataSource(bottomScrollListener: self)
    }()
    
    // Made it lazy to make it trigger at a later time.
    lazy var viewModel : BreweryViewModel = {
        let viewModel = BreweryViewModel(dataSource: dataSource)
        return viewModel
    }()
    
    private var tableView: UITableView = UITableView()
    private var tableviewCell: BreweryTableViewCell = BreweryTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        viewModel.loadNextPage()
        updateView()
        configureTableView()
    }

    private func configureTableView() {
        self.view.addSubview(tableView)
        
        tableView.isPagingEnabled = true
        tableView.bounces = false
        tableView.backgroundColor = .systemBackground
        tableView.separatorStyle = .singleLine
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        tableView.register(BreweryTableViewCell.self, forCellReuseIdentifier: BreweryTableViewCell.reuseID)
        tableView.delegate = self
        tableView.dataSource = dataSource
    }

    private func updateView() {
        self.viewModel.dataSource?.data.addAndNotify(observer: self) { [weak self] _ in
            self?.tableView.reloadData()
        }
    }
    
    func setCoordinator(coordinator: MainCoordinator) {
        viewModel.mainCoordinator = coordinator
    }
    
    func atBottom() {
        // gets hit after cellForRowAt
        print("At Bottom")
        viewModel.loadNextPage()
    }
    
}

extension BreweryListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.brewerySelection(brewery: (viewModel.dataSource?.data.value[indexPath.row])!) // This looks dodgy.
    }
    
}
