//
//  APIHandler.swift
//  WeatherApp
//
//  Created by Thomas PHIMANESONE on 22/05/2019.
//  Copyright © 2019 st2diio. All rights reserved.
//

import Foundation
import Alamofire
import CoreLocation

struct APIHandler {
    static func requestWeather(coordinates: CLLocationCoordinate2D?, success: @escaping (Data)->(), failure: @escaping (Error)->()) {
//        if let coordinate = coordinates {
            Alamofire.request("https://api.darksky.net/forecast/74923a7df9b9aa2133db783a5d21c33f/37.8267,-122.4233?units=si")
//            Alamofire.request("https://api.darksky.net/forecast/\(apiKey)/\(coordinate.latitude),\(coordinate.longitude)?\(units)")
                .responseData { (response) in
                switch response.result {
                case .success(let value):
                    success(value)
                case .failure(let error):
                    failure(error)
                }
            }
        //}
       
    }
}
