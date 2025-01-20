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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 64, weight: .medium, design: .default))
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfTheWeek: "MON",
                                  imageName: "cloud.sun.fill",
                                  temperature: "76°")
                    WeatherDayView(dayOfTheWeek: "TUE",
                                  imageName: "cloud.bolt.fill",
                                  temperature: "55°")
                    WeatherDayView(dayOfTheWeek: "WED",
                                  imageName: "cloud.heavyrain.fill",
                                  temperature: "54°")
                    WeatherDayView(dayOfTheWeek: "THU",
                                  imageName: "cloud.sun.fill",
                                  temperature: "74°")
                    WeatherDayView(dayOfTheWeek: "FRI",
                                  imageName: "sun.max.fill",
                                  temperature: "88°")
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .clipShape(.rect(cornerRadius: 10))
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
    var temperature: String
    
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
            
            Text(temperature)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
