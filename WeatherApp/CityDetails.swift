//
//  CityDetails.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation


struct CityDetails: Decodable {
    var currently: [Currently]
    var daily: [Daily]
    var hourly: [Hourly]
}


