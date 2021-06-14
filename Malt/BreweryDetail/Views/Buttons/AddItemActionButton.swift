//
//  AddItemActionButton.swift
//  Malt
//
//  Created by Liana Haque on 5/28/21.
//

import UIKit

class AddItemActionButton: UIButton {

    private let label: UILabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureButton() {
        addSubview(label)
        
        backgroundColor = .systemBlue
        
        layer.cornerRadius = 20
        
        label.font = UIFont.preferredFont(forTextStyle: .headline)
        label.text = "Add Brewery Review"
        
        translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0)
        ])
    }

}
