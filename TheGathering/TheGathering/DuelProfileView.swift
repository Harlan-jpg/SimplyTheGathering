//
//  DuelProfileView.swift
//  TheGathering
//
//  Created by Student on 5/15/25.
//

import SwiftUI

struct DuelProfileView: View {
    @State var profile: DuelProfile

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(profile.owner.ownersName)
                .font(.title)
                .bold()
                .foregroundColor(.white)

            Text("Age: \(profile.owner.ownersAge)")
                .foregroundColor(.white)

            Text("Address: \(profile.address.cityName), \(profile.address.stateName)")
                .foregroundColor(.white)

            Text("Games: \(profile.game.games.joined(separator: ", "))")
                .foregroundColor(.white)

            Text("Game Type: \(profile.game.gameType)")
                .foregroundColor(.white)

            if profile.game.isPlaying {
                Text("Currently Playing")
                    .fontWeight(.bold)
                    .foregroundColor(.green)
            } else {
                Text("Available to Play")
                    .foregroundColor(.yellow)
            }
        }
        .padding()
        .background(Color.black.opacity(0.7))
        .cornerRadius(16)
        .shadow(radius: 6)
    }
}

#Preview {
    DuelProfileView(profile: DuelProfile(
        owner: HomeOwner(
            ownersAddress: "123 Duel St",
            ownersName: "Lilith Shadowspark",
            ownersAge: 29
        ),
        address: HomeAddress(
            address: "123 Duel St",
            zipcode: 90210,
            cityName: "Shadowvale",
            stateName: "Mystica",
            homeOwner: "Lilith Shadowspark"
        ),
        game: Game(
            isPlaying: true,
            games: ["Magic: The Gathering", "Yu-Gi-Oh!"],
            gameType: "Trading Card Game"
        )
    ))
}

