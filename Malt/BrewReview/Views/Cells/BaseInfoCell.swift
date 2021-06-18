//
//  BaseInfo.swift
//  Malt
//
//  Created by Liana Haque on 6/16/21.
//

import UIKit

class BaseInfoCell: UITableViewCell {
    
    static let reuseID = "BaseInfoCell"
    
    private let beerNameStackView: UIStackView = UIStackView()
    private let beerTypeStackView: UIStackView = UIStackView()
    
    private let beerNameLabel: BoldTitleLabel = BoldTitleLabel()
    private let beerTypeLabel: MediumTextLabel = MediumTextLabel()
    
    private let beerNameTextField: UITextField = UITextField(frame: .zero)
    private let beerTypeTextField: UITextField = UITextField(frame: .zero)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .black
        configureCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureBeerNameStackView() {
        beerNameStackView.addArrangedSubview(beerNameLabel)
        beerNameStackView.addArrangedSubview(beerNameTextField)
        
        beerNameStackView.backgroundColor = .systemOrange
        beerNameStackView.distribution = .fillProportionally
        beerNameStackView.axis = .vertical
        
        beerNameLabel.text = "Beer Name Label"
        beerNameLabel.textColor = .systemYellow

        beerNameTextField.placeholder = "Beer Name Placeholder"
        beerNameTextField.backgroundColor = .blue
        
        beerNameStackView.translatesAutoresizingMaskIntoConstraints = false
        beerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        beerNameTextField.translatesAutoresizingMaskIntoConstraints = false
 
    }
    
    private func configureBeerTypeStackView() {
        beerTypeStackView.addArrangedSubview(beerTypeLabel)
        beerTypeStackView.addArrangedSubview(beerTypeTextField)
        
        beerTypeStackView.backgroundColor = .systemGreen
        beerTypeStackView.distribution = .fillProportionally
        beerTypeStackView.axis = .vertical
        
        beerTypeLabel.text = "Beer Type Label"
        beerTypeLabel.textColor = .white

        beerNameTextField.placeholder = "Beer Type Placeholder"
        beerTypeTextField.backgroundColor = .yellow

        
        beerTypeStackView.translatesAutoresizingMaskIntoConstraints = false
        beerTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        beerNameTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureCell() {
        contentView.addSubview(beerNameStackView)
        contentView.addSubview(beerTypeStackView)
        
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
