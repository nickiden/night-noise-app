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
    @Binding var mood: Mood
   
   
    var body: some View {
        // create button to start and stop sounds
        VStack {
            Button(action: {
                
                // if Start switch to stop
                if (self.buttonString == "Play Sound"){
                   
                    // change string text
                    self.buttonString = "Stop Sound"
                    
                    // call sound //////////////////////
                    playSound(sound: self.mood.soundName)
                    
                } else {
                    
                    self.buttonString = "Play Sound"
                    
                    // call to stop sound
                    stopSound()
                    
                
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
            .frame(width: 300, height: 60)
            .foregroundColor(Color.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.purple]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
    }
    
    
    
}






struct Mood_Button_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
