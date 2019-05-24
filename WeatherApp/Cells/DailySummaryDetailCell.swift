//
//  CurrentDetailCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class DailySummaryDetailCell: UITableViewCell {
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    func configure(withCity city: CityDetails.ForecastList?) {
        if let _summary = city?.summary{
            summaryLabel.text = _summary
        }
    }
}
