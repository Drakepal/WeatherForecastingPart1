//
//  CityNameView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/8/22.
//

import SwiftUI

struct CityNameView: View {
    
    var city: String
    var date: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(city)
                .font(.title)
                .bold()
                .foregroundColor(.black)
            Text(date)
            
        }
        .foregroundColor(.black)
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        CityNameView(city: "Tulsa", date: "September 8, 2022")
    }
}
