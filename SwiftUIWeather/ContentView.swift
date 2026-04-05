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
            VStack(spacing: 8) {
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

                HStack(spacing: 16) {
                    ForEach(0..<5) { _ in
                        VStack(spacing: 8) {
                            Text("TUE")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)

                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)

                            Text("74°")
                                .font(.system(size: 30, weight: .medium))
                                .foregroundStyle(.white)
                        }
                    }

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
        }
    }
}

#Preview {
    ContentView()
}
