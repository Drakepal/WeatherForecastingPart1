//
//  HourlyWeatherView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/12/22.
//

import SwiftUI

struct HourlyWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 80) {
                VStack(spacing: 20) {
                    Image(systemName: "sun.max.fill")
                    Text("Hour")
                    Text("Temp")
                }
                VStack(spacing: 20) {
                    Image(systemName: "sun.max.fill")
                    Text("Hour")
                    Text("Temp")
                }
                VStack(spacing: 20) {
                    Image(systemName: "sun.max.fill")
                    Text("Hour")
                    Text("Temp")
                }
                VStack(spacing: 20) {
                    Image(systemName: "sun.max.fill")
                    Text("Hour")
                    Text("Temp")
                }
            }
        }
    }
    private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
        VStack(spacing: 20) {
            Text(hour)
            image
                .foregroundColor(.yellow)
            Text(temp)
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemPink).opacity(0.5), Color(.yellow).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}





struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
