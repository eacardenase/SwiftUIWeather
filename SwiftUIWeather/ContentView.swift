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
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    // .frame(width: 200, height: 200)
                    .background(.red)
                    .frame(width: 200, height: 200)
                    .border(.yellow, width: 1.5)
            }
        }
    }
}

#Preview {
    ContentView()
}
