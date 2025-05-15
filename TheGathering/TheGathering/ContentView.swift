//
//  ContentView.swift
//  TheGathering
//
//  Created by Student on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("poker")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            
            Color.black.opacity(0.4)
                .ignoresSafeArea()

            VStack(spacing: 20) {
            
                Text("Magic: The Gathering")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.ultraThinMaterial)
                    .cornerRadius(16)
                    .foregroundColor(.white)
                    .padding(.horizontal)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

