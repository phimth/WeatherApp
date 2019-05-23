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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
        func configure(withCity city: CityDetails.ForecastList?) {
            if let _time = city?.time{
                hourLabel.text = "\(_time)"
            }
            if let _icon = city?.icon{
                iconView.sd_setImage(with: URL(string: _icon), completed: nil)
            }
            if let _humidity = city?.humidity{
                humidityLabel.text = "\(_humidity)"
            }
            if let _temperature = city?.temperature{
                temperatureLabel.text = "\(_temperature)"
            }


        }
    
}
