//
//  TodayWeatherView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/8/22.
//

import SwiftUI

struct TodayWeatherView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Today")
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            HStack(spacing: 20) {
                LottieView(name: cityVM.getLottieAnimation(icon: cityVM.weatherIcon))
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text("\(cityVM.temperature) °F")
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                    Text(cityVM.conditions)
                        .foregroundColor(.black)
                }
            }
            HStack {
                Spacer()
                widgetView(image: "wind", color: .gray, title: "\(cityVM.windSpeed) mi/hr")
                    
                    .foregroundColor(.black)
                Spacer()
                widgetView(image: "drop.fill", color: .blue, title: "\(cityVM.humidty)")
                    .foregroundColor(.black)
                Spacer()
                widgetView(image: "umbrella.fill", color: .red, title: "\(cityVM.rainChances)")
                    .foregroundColor(.black)
                Spacer()
            }
        
        
        }
        .padding()
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [Color.yellow.opacity(0.5),  Color.pink]), startPoint: .top,  endPoint: .bottom)).opacity(0.3))
        .shadow(color: Color.white.opacity(0.1), radius: 0.2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.1), radius: 0.1, x: 2, y: 2)
        
    }
}

private func widgetView(image: String, color: Color, title: String) -> some View {
    VStack {
        Image(systemName: image)
            .padding()
            .font(.title)
            .foregroundColor(color)
            .background(
                RoundedRectangle(cornerRadius: 10).fill(Color.yellow.opacity(0.3)))
        
        Text(title) 
    }
}


struct TodayWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
