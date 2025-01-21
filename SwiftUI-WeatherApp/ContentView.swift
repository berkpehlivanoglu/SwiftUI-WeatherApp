//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Berk Pehlivanoğlu on 11.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: .white)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill",
                                      temperature: 76)
                Spacer()
                HStack(spacing: 20) {
                    WeatherDayView(dayOfTheWeek: "MON",
                                  imageName: "cloud.sun.fill",
                                  temperature: 76)
                    WeatherDayView(dayOfTheWeek: "TUE",
                                  imageName: "cloud.bolt.fill",
                                  temperature: 55)
                    WeatherDayView(dayOfTheWeek: "WED",
                                  imageName: "cloud.heavyrain.fill",
                                  temperature: 54)
                    WeatherDayView(dayOfTheWeek: "THU",
                                  imageName: "cloud.sun.fill",
                                  temperature: 74)
                    WeatherDayView(dayOfTheWeek: "FRI",
                                  imageName: "sun.max.fill",
                                  temperature: 88)
                }
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(buttonTitle: "Change Day Time",
                                      textColor: .blue,
                                      backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 12) {
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 64, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
