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
            LinearGradient(
                colors: [.blue, .white.mix(with: .blue, by: 0.15)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack(spacing: 8) {
                Text("Bogotá, DC.")
                    .font(.system(size: 32, weight: .medium))
                    .fontWeight(.medium)
                    .foregroundStyle(.white)

                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)

                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }

                Spacer(minLength: 8)

                HStack(spacing: 16) {
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        degrees: 74,
                        imageName: "cloud.sun.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "WED",
                        degrees: 70,
                        imageName: "cloud.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "THU",
                        degrees: 66,
                        imageName: "cloud.drizzle.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "FRI",
                        degrees: 60,
                        imageName: "cloud.rain.fill"
                    )

                    WeatherDayView(
                        dayOfWeek: "SAT",
                        degrees: 55,
                        imageName: "cloud.heavyrain.fill"
                    )
                }

                Spacer()

                Button("Change Time of Day") {
                    print("DEBUG: Test")
                }
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.blue)
                .padding()
                .background(.white)
                .clipShape(.buttonBorder)

                Spacer()
            }
            .padding()
        }
    }
}

struct WeatherDayView: View {
    let dayOfWeek: String
    let degrees: Int
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

            Text("\(degrees)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
