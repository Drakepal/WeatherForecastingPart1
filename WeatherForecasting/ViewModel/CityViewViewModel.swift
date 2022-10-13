//
//  CityViewViewModel.swift
//  WeatherForecasting
//
//  Created by PM Student on 10/13/22.
//

import SwiftUI

func getLottieAnimation(icon: String) -> String {
    switch icon {
    case "01d":
        return "dayClearSky"
    case "01n":
        return "nightClearSky"
    case "02n":
        return "nightFewClouds"
    case "03d":
        return "dayScatterClouds"
    case"04d":
        return "nightScatterClouds"
    case"04n":
        return "nightBrokenClouds"
    case "09d":
        return "dayShowerRains"
    case "09n":
        return "nightShowerRains"
    case "10d":
        return "dayRain"
    case "10n":
        return "nightRain"
    case "11d":
        return "dayThunderstorm"
    case "11n":
        return "nightThunderstorm"
    case "13d":
        return "daySnow"
    case "13n":
        return "nightSnow"
    case "50d":
        return "dayMist"
    case "50n":
        return "nightMist"
    default:
        return "dayClearSky"
        
    }
}


func getWeatherIconFor(icon: String) -> Image {
    switch icon {
    case "01d":
        return Image(systemName: "sun.max.fill")
    case "01n":
        return Image(systemName: "moon.fill")
    case "02d":
        return Image(systemName: "cloud.sun.fill")
    case "02n":
        return Image(systemName: "clous.moon.fill")
    case "03d":
        return Image(systemName: "cloud.fill")
    case "03n":
        return Image(systemName: "cloud.fill")
    case"04d":
        return Image(systemName: "cloud.fill")
    case "04n":
        return Image(systemName: "cloud.fill")
    case "09d":
        return Image(systemName: "cloud.drizzle.fill")
    case "09n":
        return Image(systemName: "cloud.drizzle.fill")
    case "10d":
        return Image(systemName: "cloud.heavyrain.fill")
    case "10n":
        return Image(systemName: "cloud.heavyrain.fill")
    case "11d":
        return Image(systemName: "cloud.bolt.fill")
    case "11n":
        return Image(systemName: "cloud.bolt.fill")
    case "13d":
        return Image(systemName: "cloud.snow.fill")
    case "13n":
        return Image(systemName: "cloud.snow.fill")
    case "50d":
        return Image(systemName: "cloud.fog.fill")
    case "50n":
        return Image(systemName: "cloud.fog.fill")
    default:
        return Image(systemName: "sun.max.fill")
    }
}
