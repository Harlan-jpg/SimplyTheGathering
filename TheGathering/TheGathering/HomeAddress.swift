//
//  HomeAddress.swift
//  TheGathering
//
//  Created by Student on 5/15/25.
//

import Foundation

struct HomeAddress {
    var address: String
    var zipcode: Int
    var cityName: String
    var stateName: String
    var homeOwner: String

    
    func fullAddress() -> String {
        return "\(address), \(cityName), \(stateName) \(zipcode)"
    }

    
    func isZipValid() -> Bool {
        return String(zipcode).count == 5
    }
}
