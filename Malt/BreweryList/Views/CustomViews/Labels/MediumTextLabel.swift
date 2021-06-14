//
//  MediumTextLabel.swift
//  Malt
//
//  Created by Liana Haque on 5/12/21.
//

import UIKit

class MediumTextLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    private func configure() {
        translatesAutoresizingMaskIntoConstraints   = false
        textColor                                   = .white
        numberOfLines                               = 0
        font                                        = .systemFont(ofSize: 15, weight: .medium)
        adjustsFontSizeToFitWidth                   = true
        minimumScaleFactor                          = 0.25
        adjustsFontForContentSizeCategory           = true
    }
}
