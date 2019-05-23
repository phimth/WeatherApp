//
//  CityDetails.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation


struct CityDetails: Decodable {
    
    struct ForecastData:Decodable {
        var icon: String?
        var temperature: Double?
        var summary: String?
        var humidity: Double?
        var pressure: Double?
        var windSpeed: Double?
        var uvIndex: Int?
        var time: Double?
        var temperatureMin: Double?
        var temperatureMax: Double?
        
    }
    
    struct ForecastList:Decodable {
        var icon: String?
        var summary: String?
//        var time: Double?
//        var humidity: Double?
//        var temperature: Double?
//        var temperatureMin: Double?
//        var temperatureMax: Double?
        var data: [ForecastData]?
    }
    
    var hourly: ForecastList?
    var currently: ForecastData?
    var daily: ForecastList?
}


