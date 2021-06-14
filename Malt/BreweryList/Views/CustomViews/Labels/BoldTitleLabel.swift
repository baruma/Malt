//
//  MaltBoldTitleLabel.swift
//  Malt
//
//  Created by Liana Haque on 5/10/21.
//

import UIKit

class BoldTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    private func configure() {
        translatesAutoresizingMaskIntoConstraints   = false
        textColor                                   = .systemYellow  //UIColor(red: 207/254, green: 177/254, blue: 77/254, alpha: 1.0)
        numberOfLines                               = 0
        font                                        = .systemFont(ofSize: 32, weight: .heavy)
        adjustsFontSizeToFitWidth                   = true
        minimumScaleFactor                          = 0.25
        adjustsFontForContentSizeCategory           = true
    }
}
