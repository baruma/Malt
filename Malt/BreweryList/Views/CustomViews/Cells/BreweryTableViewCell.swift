//
//  BreweryTableViewCell.swift
//  Malt
//
//  Created by Liana Haque on 5/10/21.
//

import UIKit

class BreweryTableViewCell: UITableViewCell {
    
    static let reuseID = "BreweryTableViewCell"
    var breweryNameLabel: BoldTitleLabel = BoldTitleLabel()
    var cityAndStateLabel: MediumTextLabel = MediumTextLabel()
    var containerView: UIView = UIView(frame: .zero)
    
    var brewery: Brewery? {
        didSet {
            guard let brewery = brewery else {
                return
            }
            breweryNameLabel.text = brewery.name
            cityAndStateLabel.text = brewery.city
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .black
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCell() {
        contentView.addSubview(containerView)
        containerView.addSubview(breweryNameLabel)
        containerView.addSubview(cityAndStateLabel)
        
        self.selectionStyle = .none
        
        containerView.backgroundColor       = UIColor.systemGray6.withAlphaComponent(0.1)
        containerView.layer.cornerRadius    = 20
        
        translatesAutoresizingMaskIntoConstraints                   = false
        containerView.translatesAutoresizingMaskIntoConstraints     = false
        breweryNameLabel.translatesAutoresizingMaskIntoConstraints  = false
        
        NSLayoutConstraint.activate([
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),

            breweryNameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            breweryNameLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            breweryNameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            breweryNameLabel.bottomAnchor.constraint(equalTo: cityAndStateLabel.topAnchor, constant: -10),
            
            cityAndStateLabel.topAnchor.constraint(equalTo: breweryNameLabel.bottomAnchor, constant: 10),
            cityAndStateLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            cityAndStateLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            
        ])
    }

}

