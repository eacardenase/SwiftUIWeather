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
                colors: [.blue, .white.mix(with: .blue, by: 0.4)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack {
                Text("Bogotá, DC.")
                    .font(.system(size: 32, weight: .medium))
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .padding()

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

                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
