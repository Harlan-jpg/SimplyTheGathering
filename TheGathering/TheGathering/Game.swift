//
//  Game.swift
//  TheGathering
//
//  Created by Student on 5/15/25.
//

import Foundation

struct Game {
    var isPlaying: Bool
    var games: [String]
    var gameType: String

 
    mutating func togglePlaying() {
        isPlaying.toggle()
    }


    mutating func addGame(_ newGame: String) {
        games.append(newGame)
    }

   
    func sessionInfo() -> String {
        let status = isPlaying ? "Currently playing" : "Not playing"
        let list = games.joined(separator: ", ")
        return "\(status): \(list) [Type: \(gameType)]"
    }
}
