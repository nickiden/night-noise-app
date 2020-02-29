//
//  Mood.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-14.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import Foundation
import SwiftUI

// struct for all the data info

struct Mood: Hashable,Codable,Identifiable {
    
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case Ocean = "Beach"
        case Fire = "Fire"
        case Rain = "Rain"
        case Snow = "Snow"
        case Noise = "Noise"
        case City = "City"
        case Forest = "Forest"
        case Waterfall = "Waterfall"
    }
}
