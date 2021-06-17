//
//  BaseInfo.swift
//  Malt
//
//  Created by Liana Haque on 6/16/21.
//

import UIKit

class BaseInfoCell: UICollectionViewCell {
    
    static let reuseID = "BaseInfoCell"
    
    
    // Should not be a label
    private let beerNameLabel: BoldTitleLabel = BoldTitleLabel()
    private let beerTypeLabel: MediumTextLabel = MediumTextLabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(beerNameLabel)
        addSubview(beerTypeLabel)
        
        beerNameLabel.textColor = .systemYellow
        beerTypeLabel.textColor = .white
        
        beerNameLabel.text = "Beer Name Label"
        beerTypeLabel.text = "Beer Type Label"
        
        NSLayoutConstraint.activate([
            beerNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            beerNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            beerNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            beerNameLabel.bottomAnchor.constraint(equalTo: beerTypeLabel.topAnchor, constant: 5),
            
            beerTypeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            beerTypeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            beerTypeLabel.topAnchor.constraint(equalTo: beerNameLabel.bottomAnchor),
            beerTypeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 5)
        ])
    }
}
