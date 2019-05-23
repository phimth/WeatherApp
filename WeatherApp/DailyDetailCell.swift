//
//  DailyTableViewCell.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 23/05/2019.
//  Copyright © 2019 Thomas PHIMANESONE. All rights reserved.
//

import UIKit

class DailyDetailCell: UITableViewCell {

    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var tempMaxLabel: UILabel!
    @IBOutlet weak var tempMinLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withCity city: CityDetails.ForecastList?) {
        if let _time = city?.time{
            dayLabel.text = "\(_time)"
        }
        if let _icon = city?.icon{
            iconView.sd_setImage(with: URL(string: _icon), completed: nil)
        }
        if let _temperatureMin = city?.temperatureMin{
            tempMaxLabel.text = "\(_temperatureMin)"
        }
        if let _temperatureMax = city?.temperatureMax{
            tempMaxLabel.text = "\(_temperatureMax)"
        }
    }
}
