//
//  ExtraBisInfosCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class ExtraBisInfosCell: UITableViewCell {

    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var uvIndexLabel: UILabel!
    
    func configure(withCity city: CityDetails.ForecastData?) {
        if let _pressure = city?.pressure{
            pressureLabel.text = "\(_pressure)"
        }
        if let _uvIndex = city?.uvIndex{
            uvIndexLabel.text = "\(_uvIndex)"
        }
    }

}
