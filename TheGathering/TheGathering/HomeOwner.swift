//
//  HomeOwner.swift
//  TheGathering
//
//  Created by Student on 5/12/25.
//

import Foundation

struct HomeOwner {
    var ownersAddress: String
    var ownersName: String
    var ownersAge: Int

    
    func isAdult() -> Bool {
        return ownersAge >= 18
    }

    
    func ownerProfile() -> String {
        return "\(ownersName), \(ownersAge) years old, lives at \(ownersAddress)"
    }
}


