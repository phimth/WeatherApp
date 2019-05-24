//
//  DetailCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit

class HourlyDetailCell: UITableViewCell {

    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(withCity city: CityDetails.ForecastData?, timezone: String?) {
           if let _time = city?.time{
                let formatter = DateFormatter()
                let date = Date(timeIntervalSince1970: _time)
                formatter.dateFormat = "HH'h'"
                formatter.timeZone = TimeZone(identifier: timezone ?? "")
                let formattedDate = formatter.string(from: date)
                hourLabel.text = "\(formattedDate)"
            }
            if let _icon = city?.icon{
                iconView.image = UIImage(named: "Icons/\(_icon)")
            }
            if let _humidity = city?.humidity{
                humidityLabel.text = "\((_humidity*100).toRoundString())%"
            }
            if let _temperature = city?.temperature{
                temperatureLabel.text = "\(_temperature.toRoundString())°"
            }
        }
    
}
