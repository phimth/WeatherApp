//
//  DetailCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import UIKit

class HourlyDetailCell: UITableViewCell {
    
    
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(withCity city: CityDetails.ForecastData) {
        if let _summary = city.summary{
            summaryLabel.text = "\(_summary)"
        }
        if let _humidity = city.humidity{
            humidityLabel.text = "\(_humidity)"
        }
        if let _temperature = city.temperature{
            temperatureLabel.text = "\(_temperature)"
        }
        
        
    }
    
}
