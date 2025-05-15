//
//  DuelProfile.swift
//  TheGathering
//
//  Created by Student on 5/15/25.
//

import Foundation

struct DuelProfile: Identifiable {
    let id = UUID()
    let owner: HomeOwner
    let address: HomeAddress
    let game: Game
}
