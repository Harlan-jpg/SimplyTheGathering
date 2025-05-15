//
//  ProfileListView.swift
//  TheGathering
//
//  Created by Student on 5/15/25.
//

import SwiftUI

struct ProfileListView: View {
    let profiles: [DuelProfile]
    let sampleProfiles = [
        DuelProfile(
            owner: HomeOwner(
                ownersAddress: "456 Shadow Rd",
                ownersName: "Jace Beleren",
                ownersAge: 35
            ),
            address: HomeAddress(
                address: "456 Shadow Rd",
                zipcode: 94110,
                cityName: "Ravnica",
                stateName: "Izzet",
                homeOwner: "Jace Beleren"
            ),
            game: Game(
                isPlaying: true,
                games: ["Magic: The Gathering"],
                gameType: "TCG"
            )
        ),
        DuelProfile(
            owner: HomeOwner(
                ownersAddress: "789 Duel Ln",
                ownersName: "Liliana Vess",
                ownersAge: 28
            ),
            address: HomeAddress(
                address: "789 Duel Ln",
                zipcode: 90210,
                cityName: "Innistrad",
                stateName: "Necropolis",
                homeOwner: "Liliana Vess"
            ),
            game: Game(
                isPlaying: false,
                games: ["Magic: The Gathering", "Pokemon"],
                gameType: "TCG"
            )
        )
    ]

    var body: some View {
        ZStack {
            Image("poker")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    Text("Duelists Nearby")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)

                    ForEach(profiles) { profile in
                        DuelProfileView(profile: profile)
                            .padding(.horizontal)
                    }
                }
                .padding(.bottom, 40)
            }
        }
    }
}
#Preview {
    let sampleProfiles = [
        DuelProfile(
            owner: HomeOwner(
                ownersAddress: "456 Shadow Rd",
                ownersName: "Jace Beleren",
                ownersAge: 35
            ),
            address: HomeAddress(
                address: "456 Shadow Rd",
                zipcode: 94110,
                cityName: "Ravnica",
                stateName: "Izzet",
                homeOwner: "Jace Beleren"
            ),
            game: Game(
                isPlaying: true,
                games: ["Magic: The Gathering"],
                gameType: "TCG"
            )
        ),
        DuelProfile(
            owner: HomeOwner(
                ownersAddress: "789 Duel Ln",
                ownersName: "Liliana Vess",
                ownersAge: 28
            ),
            address: HomeAddress(
                address: "789 Duel Ln",
                zipcode: 90210,
                cityName: "Innistrad",
                stateName: "Necropolis",
                homeOwner: "Liliana Vess"
            ),
            game: Game(
                isPlaying: false,
                games: ["Magic: The Gathering", "Pokemon"],
                gameType: "TCG"
            )
        )
    ]

    return ProfileListView(profiles: sampleProfiles)
}
#Preview {
    ProfileListView(profiles: sampleProfiles)
}
