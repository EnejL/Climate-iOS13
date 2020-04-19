//
//  WeatherModel.swift
//  Climate-iOS13
//
//  Created by Enej on 19/04/2020.
//  Copyright © 2020 Enej. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
            case 200...232:
                return "cloud.bolt.rain"
            case 300...321:
                return "cloud.rain"
            case 500...504:
                return "cloud.heavyrain"
            case 511:
                return "snow"
            case 520...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.sun"
            default:
                return "exclamationmark.icloud"
        }
    }
}
