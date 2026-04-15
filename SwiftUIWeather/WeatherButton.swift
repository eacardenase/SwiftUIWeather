//
//  WeatherButton.swift
//  SwiftUIWeather
//
//  Created by Edwin Cardenas on 4/4/26.
//

import SwiftUI

struct WeatherButton: View {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let action: () -> Void

    init(
        title: String,
        textColor: Color,
        backgroundColor: Color,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.action = action
    }

    var body: some View {
        Button(title) {
            action()
        }
        .font(.system(size: 20, weight: .semibold))
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .foregroundStyle(textColor)
        .background(backgroundColor.gradient)
        .clipShape(.buttonBorder)
    }
}

#Preview {
    WeatherButton(
        title: "Test Title",
        textColor: .white,
        backgroundColor: .blue
    ) {
        print("DEBUG: \(#file)")
    }
}
