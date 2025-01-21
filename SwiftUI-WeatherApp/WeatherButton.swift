//
//  WeatherButton.swift
//  SwiftUI-WeatherApp
//
//  Created by Berk Pehlivanoğlu on 21.01.2025.
//

import SwiftUI

struct WeatherButton: View {
    var buttonTitle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(.rect(cornerRadius: 10))
            .foregroundStyle(textColor)
    }
}
