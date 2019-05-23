//
//  CitiesListCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class CitiesListCell: UITableViewCell {

    @IBOutlet weak var CitiesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(Name: String?){
        CitiesLabel.text = Name  ?? ""
    }

}
