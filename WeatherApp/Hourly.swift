//
//  Hourly.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation
import SDWebImage

struct Hourly: Decodable{
    var icon: String
    var temperature: Double
    var summary: String
    var humidity: Double
    var pressure: Double
    var winSpeed: Double
    var uvIndex: Int
}
