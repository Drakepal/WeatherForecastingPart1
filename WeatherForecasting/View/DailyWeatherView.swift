//
//  DailyWeatherView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/12/22.
//

import SwiftUI

struct DailyWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
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
        .foregroundColor(.black)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(.yellow).opacity(0.5), Color(.systemPink).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    
    
    }
    
    
    
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
