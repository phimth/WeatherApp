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
    
    func configure(withCity city: CityDetails.ForecastData?, timezone: String?) {
        if let _time = city?.time{
            let formatter = DateFormatter()
            let date = Date(timeIntervalSince1970: _time)
            formatter.dateFormat = "EEE dd"
            formatter.timeZone = TimeZone(identifier: timezone ?? "")
            let formattedDate = formatter.string(from: date)
            dayLabel.text = "\(formattedDate)"        }
        if let _icon = city?.icon{
            iconView.image = UIImage(named: "Icons/\(_icon)")
        }
        if let _temperatureMin = city?.temperatureMin{
            tempMinLabel.text = "\(_temperatureMin.toRoundString())°"
        }
        if let _temperatureMax = city?.temperatureMax{
            tempMaxLabel.text = "\(_temperatureMax.toRoundString())°"
        }
    }
}
