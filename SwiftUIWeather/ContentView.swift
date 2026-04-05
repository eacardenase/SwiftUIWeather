//
//  ContentView.swift
//  SwiftUIWeather
//
//  Created by Edwin Cardenas on 4/2/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(
                topColor: .blue,
                bottomColor: .white.mix(with: .blue, by: 0.15)
            )

            VStack(spacing: 8) {
                CityTextView(cityName: "Bogotá, DC.")

                MainWeatherStatusView(
                    imageName: "cloud.sun.fill",
                    temperature: 76
                )

                Spacer(minLength: 8)

                HStack(spacing: 16) {
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        temperature: 74,
                        imageName: "cloud.sun.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "WED",
                        temperature: 70,
                        imageName: "cloud.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "THU",
                        temperature: 66,
                        imageName: "cloud.drizzle.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "FRI",
                        temperature: 60,
                        imageName: "cloud.rain.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "SAT",
                        temperature: 55,
                        imageName: "cloud.heavyrain.fill"
                    )
                }

                Spacer()

                WeatherButton(
                    title: "Change Time of Day",
                    textColor: .blue,
                    backgroundColor: .white
                ) {
                    print("DEBUG: Test")
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct BackgroundView: View {
    let topColor: Color
    let bottomColor: Color

    var body: some View {
        LinearGradient(
            colors: [topColor, bottomColor],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    let cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .fontWeight(.medium)
            .foregroundStyle(.white)
    }
}

struct MainWeatherStatusView: View {
    let imageName: String
    let temperature: Int

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct WeatherDayView: View {
    let dayOfWeek: String
    let temperature: Int
    let imageName: String

    var body: some View {
        VStack(spacing: 8) {
            Text(dayOfWeek)
                .font(.system(size: 20))
                .foregroundStyle(.white)

            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            Text("\(temperature)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
