//
//  ExtraInfosViewCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class ExtraInfosCell: UITableViewCell {

    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var winSpeedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(withCity city: CityDetails.ForecastData?) {
        if let _humidity = city?.humidity{
            humidityLabel.text = "\((_humidity*100).toRoundString()) %"
        }
        if let _windSpeed = city?.windSpeed{
            winSpeedLabel.text = "\(_windSpeed.toRoundString()) km/h"
        }
    }
    
}
