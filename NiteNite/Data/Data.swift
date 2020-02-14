//
//  Data.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-14.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import Foundation

// create list of drinks
let moodData:[Mood] = load(filename: "moods.json")

// FUNCTION :   load
// DESCRIPTION :
//              loads data from .json file. // this file is taken from swiftui demo https://www.youtube.com/watch?v=Xetrbmnszjc

func load <T:Decodable>( filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            // check file
            fatalError("Couldn't find \(filename) in the bundle")
    }
    // check file if file has valid data
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in the bundle:\n\(error)")
    }
    // parse data
    do{
        
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self): \n\(error)")
    }
    
}
