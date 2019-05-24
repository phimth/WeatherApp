//
//  HeaderCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class HeaderCell: UITableViewCell{
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    func configure(withCity city: CityDetails.ForecastData?) {
            if let _icon = city?.icon{
                iconView.image = UIImage(named: "Icons/\(_icon)")
            }
            if let _temperature = city?.temperature{
                temperatureLabel.text = "\(_temperature.toRoundString())°"
            }
            if let _summary = city?.summary{
                summaryLabel.text = "\(_summary)"
            }
        }
}
