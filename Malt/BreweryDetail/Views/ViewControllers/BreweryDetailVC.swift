//
//  BreweryDetailVC.swift
//  Malt
//
//  Created by Liana Haque on 5/20/21.
//

import UIKit

class BreweryDetailVC: UIViewController {
    
    private var tableView: UITableView = UITableView(frame: .zero)
    private var addBreweryButton: AddItemActionButton = AddItemActionButton(frame: .zero)
    var selectedBrewery: Brewery?
    
    lazy var viewModel = BreweryDetailViewModel(brewery: selectedBrewery!)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        configureButton()
    }
    
    private func configureTableView() {
        view.addSubview(self.tableView)

        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = .black
        
        UIView.setAnimationsEnabled(false)

        self.tableView.register(BreweryDetailHeaderTableViewCell.self, forCellReuseIdentifier: BreweryDetailHeaderTableViewCell.reuseID)

        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    private func configureButton() {
        view.addSubview(addBreweryButton)
        
        NSLayoutConstraint.activate([
            addBreweryButton.heightAnchor.constraint(equalToConstant: 50),
            addBreweryButton.widthAnchor.constraint(equalToConstant: 200),
            addBreweryButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            addBreweryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        addBreweryButton.addTarget(self, action: #selector(onBreweryButtonPressed(sender:)), for: .touchUpInside)
     }
    
    // MARK: TODO - Stop reaching into the viewModel and Coordinator nested in it like this it's not good.
    @objc func onBreweryButtonPressed(sender: UIButton) {
        viewModel.mainCoordinator?.goToBrewReviewScreen()
    }
    
    // setter injection
    func setCoordinator(coordinator: MainCoordinator) {
        viewModel.mainCoordinator = coordinator
    }
    
}

extension BreweryDetailVC: UITableViewDelegate {}

extension BreweryDetailVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailHeaderCell = tableView.dequeueReusableCell(withIdentifier: BreweryDetailHeaderTableViewCell.reuseID, for: indexPath) as! BreweryDetailHeaderTableViewCell
        detailHeaderCell.brewery = selectedBrewery  // how did this click into place?  How did I know to do this.
        // detailHeaderCell is our BreweryDetailHeaderTableViewCell and we're taking the brewery property it has to set it to the selectedBrewery.
        return detailHeaderCell
    }
}
