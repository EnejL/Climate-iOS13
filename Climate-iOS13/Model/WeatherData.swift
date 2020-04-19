//
//  WeatherData.swift
//  Climate-iOS13
//
//  Created by Enej on 19/04/2020.
//  Copyright © 2020 Enej. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
