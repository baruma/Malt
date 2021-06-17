//
//  BaseInfo.swift
//  Malt
//
//  Created by Liana Haque on 6/16/21.
//

import UIKit

class BaseInfoCell: UICollectionViewCell {
    
    static let reuseID = "BaseInfoCell"
    
    private let beerNameStackView: UIStackView = UIStackView()
    private let beerTypeStackView: UIStackView = UIStackView()
    
    private let beerNameLabel: BoldTitleLabel = BoldTitleLabel()
    private let beerTypeLabel: BoldTitleLabel = BoldTitleLabel()
    
    private let beerNameTextField: UITextField = UITextField(frame: .zero)
    private let beerTypeTextField: UITextField = UITextField(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureBeerNameStackView() {
        beerNameStackView.addSubview(beerNameLabel)
        beerNameStackView.addSubview(beerNameTextField)
        
        beerNameStackView.backgroundColor = .systemOrange
        beerNameStackView.distribution = .equalSpacing
        
        beerNameLabel.text = "Beer Name Label"
        beerNameLabel.textColor = .systemYellow

        beerNameTextField.placeholder = "Beer Name Placeholder"
        
        beerNameStackView.translatesAutoresizingMaskIntoConstraints = false
        beerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        beerNameTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureBeerTypeStackView() {
        beerTypeStackView.addSubview(beerTypeLabel)
        beerTypeStackView.addSubview(beerTypeLabel)
        
        beerTypeStackView.backgroundColor = .systemTeal
        beerTypeStackView.distribution = .equalSpacing
        
        beerTypeLabel.text = "Beer Type Label"
        beerTypeLabel.textColor = .white

        beerNameTextField.placeholder = "Beer Type Placeholder"
        
        beerTypeStackView.translatesAutoresizingMaskIntoConstraints = false
        beerTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        beerNameTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureCell() {
        addSubview(beerNameStackView)
        addSubview(beerTypeStackView)
        
        configureBeerNameStackView()
        configureBeerTypeStackView()
        
        NSLayoutConstraint.activate([
            beerNameStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            beerNameStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            beerNameStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            // beerNameStackView.bottomAnchor.constraint(equalTo: , constant: )
            
            beerTypeStackView.topAnchor.constraint(equalTo: beerNameStackView.bottomAnchor, constant: 0),
            beerTypeStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            beerTypeStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            beerTypeStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ])
    }
}
