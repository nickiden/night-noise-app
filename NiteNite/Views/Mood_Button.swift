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
import AVFoundation

struct Mood_Button: View {
    
    var StartOn: Bool = true
    @State private var buttonString = "Play Sound"
    // variable for audio player
    var SoundEffect: AVAudioPlayer?
   
    
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
                    .font(.title)
                .bold()
                  
                
            }.buttonStyle(GradientButtonStyle())
        }
    }
    
    
    
    
}


// Struct to create color style for button

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 270, height: 60)
            .foregroundColor(Color.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.yellow]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
    }
}





struct Mood_Button_Previews: PreviewProvider {
    static var previews: some View {
        Mood_Button()
    }
}
