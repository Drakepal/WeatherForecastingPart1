//
//  MenuHeaderView.swift
//  WeatherForecasting
//
//  Created by PM Student on 9/8/22.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    @State private var searchTerm = "Tulsa"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .foregroundColor(.black)
                .padding(.leading, 20)
            
            Button{
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow.opacity(0.4))
                    
                    Image(systemName: "location.fill")
                        .foregroundColor(.black)
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack (alignment: .leading){
            Image(systemName: "magnifyingglass")
                .foregroundColor(.pink)
                .padding(.leading, 10)
            
                RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(.systemPink).opacity(0.5), Color(.yellow).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        })
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
