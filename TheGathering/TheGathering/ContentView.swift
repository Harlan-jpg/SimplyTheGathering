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

           
            Color.black.opacity(0.5)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("Magic: The Gathering")
                    .font(.system(size: 30, weight: .heavy, design: .serif))
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.8), radius: 4, x: 2, y: 2)
                    .padding(.top, 100)

                Text("Find duelists nearby and challenge them to a friendly game!")
                    .font(.system(size:14))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    

                Spacer()

               
                NavigationLink {
                    ProfileListView(profiles: sampleProfiles)
                } label: {
                    Text("Find Duelists")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color.red, Color.purple], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(15)
                        .padding(.horizontal, 50)
                        .shadow(radius: 10)
                }

                Spacer()
            }
        }
    }
}


let sampleProfiles = [
    DuelProfile(
        owner: HomeOwner(ownersAddress: "456 Shadow Rd", ownersName: "Jace Beleren", ownersAge: 35),
        address: HomeAddress(address: "456 Shadow Rd", zipcode: 94110, cityName: "Ravnica", stateName: "Izzet", homeOwner: "Jace Beleren"),
        game: Game(isPlaying: true, games: ["Magic: The Gathering"], gameType: "TCG")
    ),
    DuelProfile(
        owner: HomeOwner(ownersAddress: "789 Duel Ln", ownersName: "Liliana Vess", ownersAge: 28),
        address: HomeAddress(address: "789 Duel Ln", zipcode: 90210, cityName: "Innistrad", stateName: "Necropolis", homeOwner: "Liliana Vess"),
        game: Game(isPlaying: false, games: ["Magic: The Gathering", "Pokemon"], gameType: "TCG")
    )
]

#Preview {
    NavigationView {
        ContentView()
    }
}
