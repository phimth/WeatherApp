//
//  ForecastCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {

    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withCity city: CityDetails.ForecastData?) {
        if let _time = city?.time{
            let formatter = DateFormatter()
            let date = Date(timeIntervalSince1970: _time)
            formatter.dateFormat = "EEE dd"
            let formattedDate = formatter.string(from: date)
            hourLabel.text = "\(formattedDate)"
        }
        if let _humidity = city?.humidity{
            humidityLabel.text = (_humidity*100).toRoundString()
        }
        if let _temperature = city?.temperature{
            temperatureLabel.text = _temperature.toRoundString()
        }
    }
}
