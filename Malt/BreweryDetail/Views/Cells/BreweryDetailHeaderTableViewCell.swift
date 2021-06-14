//
//  BreweryDetailTableViewCell.swift
//  Malt
//
//  Created by Liana Haque on 5/20/21.
//

import UIKit

// Gettiing data from the viewmodel
class BreweryDetailHeaderTableViewCell: UITableViewCell {
    
    static let reuseID = "BreweryDetailHeaderTableViewCell"
    
    private let containerView: UIView = UIView(frame: .zero)
    
    private let nameAndTypeStackView: UIStackView = UIStackView(frame: .zero)
    private let cityAndStateStackView: UIStackView = UIStackView(frame: .zero)
    private let phoneAndWebsiteStackView: UIStackView = UIStackView(frame: .zero)
    
    var breweryNameLabel: BoldTitleLabel = BoldTitleLabel()  // change into larger bolder text label.
    var breweryTypeLabel: MediumTextLabel = MediumTextLabel()  // need to make this font tiny, thin and italic.
    var cityLabel: MediumTextLabel = MediumTextLabel()
    var stateLabel: MediumTextLabel = MediumTextLabel()
    var countryLabel: MediumTextLabel = MediumTextLabel()
    var postalCodeLabel: MediumTextLabel = MediumTextLabel()
    var phoneLabel: MediumTextLabel = MediumTextLabel()
    var websiteLabel: MediumTextLabel = MediumTextLabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .purple
        configureCell()
    }
    
    var brewery: Brewery? {
        didSet {
            guard let brewery = brewery else {
                return
            }
            breweryNameLabel.text = brewery.name
            breweryTypeLabel.text = brewery.breweryType
            cityLabel.text = brewery.city
            stateLabel.text = brewery.state
            countryLabel.text = brewery.country
            postalCodeLabel.text = String(brewery.postalCode)
            phoneLabel.text = String(brewery.phone)
            websiteLabel.text = brewery.website
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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configureNameAndTypeStackView() {
        nameAndTypeStackView.addArrangedSubview(breweryNameLabel)
        nameAndTypeStackView.addArrangedSubview(breweryTypeLabel)
        
        breweryNameLabel.translatesAutoresizingMaskIntoConstraints      = false
        breweryTypeLabel.translatesAutoresizingMaskIntoConstraints      = false
        nameAndTypeStackView.translatesAutoresizingMaskIntoConstraints  = false
        
        nameAndTypeStackView.axis           = .vertical
        nameAndTypeStackView.distribution   = .fillEqually
        
    }
    
    private func configureCityAndStateStackView() {
        cityAndStateStackView.addArrangedSubview(cityLabel)
        cityAndStateStackView.addArrangedSubview(stateLabel)
        
        cityAndStateStackView.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        stateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cityAndStateStackView.axis = .horizontal
        cityAndStateStackView.distribution = .fillProportionally
        
        NSLayoutConstraint.activate([
            cityAndStateStackView.trailingAnchor.constraint(equalTo: cityAndStateStackView.trailingAnchor, constant: 0),
            cityAndStateStackView.leadingAnchor.constraint(equalTo: cityAndStateStackView.leadingAnchor, constant: 0),
            cityAndStateStackView.topAnchor.constraint(equalTo: nameAndTypeStackView.bottomAnchor, constant: -20),
            cityAndStateStackView.bottomAnchor.constraint(equalTo: phoneAndWebsiteStackView.topAnchor, constant: 20)
        ])
    }
    
    private func configurePhoneAndWebsiteStackView() {
        phoneAndWebsiteStackView.addArrangedSubview(phoneLabel)
        phoneAndWebsiteStackView.addArrangedSubview(websiteLabel)
        
        phoneAndWebsiteStackView.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        websiteLabel.translatesAutoresizingMaskIntoConstraints = false
        
        phoneAndWebsiteStackView.axis = .vertical
        phoneAndWebsiteStackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            phoneAndWebsiteStackView.trailingAnchor.constraint(equalTo: phoneAndWebsiteStackView.trailingAnchor, constant: 0),
            phoneAndWebsiteStackView.leadingAnchor.constraint(equalTo: phoneAndWebsiteStackView.leadingAnchor, constant: 0),
            phoneAndWebsiteStackView.topAnchor.constraint(equalTo: cityAndStateStackView.bottomAnchor, constant: -20),
            phoneAndWebsiteStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0)
        ])
    }
    
    private func configureCell() {
        contentView.addSubview(containerView)
        containerView.addSubview(nameAndTypeStackView)
        containerView.addSubview(cityAndStateStackView)
        containerView.addSubview(phoneAndWebsiteStackView)
        
        translatesAutoresizingMaskIntoConstraints                   = false
        containerView.translatesAutoresizingMaskIntoConstraints     = false
        
        configureNameAndTypeStackView()
        configureCityAndStateStackView()
        configurePhoneAndWebsiteStackView()
        
        self.selectionStyle = .none
                
        contentView.layer.cornerRadius      = 20
        containerView.backgroundColor       = UIColor.systemGray6.withAlphaComponent(0.2)
        containerView.layer.cornerRadius    = 20
        
        breweryNameLabel.text = "Brewery Name Label"
        breweryTypeLabel.text = "Brewery Type Label"
        cityLabel.text        = "City Label"
        stateLabel.text       = "State Label"
        countryLabel.text     = "Country Label"
        phoneLabel.text       = "562 404 5252"
        websiteLabel.text     = "Website Label"


        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 250),
            
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            nameAndTypeStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            nameAndTypeStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            nameAndTypeStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            nameAndTypeStackView.bottomAnchor.constraint(equalTo: cityAndStateStackView.topAnchor, constant: -20),
            
            cityAndStateStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            cityAndStateStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            cityAndStateStackView.topAnchor.constraint(equalTo: nameAndTypeStackView.bottomAnchor, constant: 5),
            cityAndStateStackView.bottomAnchor.constraint(equalTo: phoneAndWebsiteStackView.topAnchor, constant: -5),
            
            phoneAndWebsiteStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0),
            phoneAndWebsiteStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            phoneAndWebsiteStackView.topAnchor.constraint(equalTo: cityAndStateStackView.bottomAnchor, constant: -5),
            phoneAndWebsiteStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0)
        ])
    }
}
