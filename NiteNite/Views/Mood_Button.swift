//
//  Mood_Button.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-01-07.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
// Comment:
//          This is the start/stop button for playing sounds

import SwiftUI

struct Mood_Button: View {
    
    var StartOn: Bool = true
    @State private var buttonString = "Play Sound"
   
    
    var body: some View {
        // create button to start and stop sounds
        VStack {
            Button(action: {
                
                // if Start switch to stop
                if (self.buttonString == "Play Sound"){
                   
                    // change string text
                    self.buttonString = "Stop Sound"
                    
                } else {
                    
                    self.buttonString = "Play Sound"
                
                }
                
            }) {
                Text(buttonString)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .font(.headline)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            }
        }
    }
}

struct Mood_Button_Previews: PreviewProvider {
    static var previews: some View {
        Mood_Button()
    }
}
