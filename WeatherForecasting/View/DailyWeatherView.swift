//
//  DailyWeatherView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/12/22.
//

import SwiftUI

struct DailyWeatherView: View {
    var body: some View {
        LazyVStack {
            dailyCell()
        }
    }
    private func dailyCell() -> some View {
        HStack {
            Text("Day".uppercased())
                .frame(width: 50)
            Spacer()
            Text("Temperature °F")
                .frame(width: 150)
            Spacer()
            Image(systemName: "sun.max.fill")
            
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    
    
    }
    
    
    
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherView()
    }
}
