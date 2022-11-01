//
//  API+Extension.swift
//  WeatherForecasting
//
//  Created by PM Student on 11/1/22.
//

import Foundation


extension API {
    static let baseURLString = "https://api.openweathermap.org/data/3.0/"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
//        Check if weather data is not working.
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"

    }
}
