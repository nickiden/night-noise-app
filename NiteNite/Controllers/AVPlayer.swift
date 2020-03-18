//
//  AVPlayer.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-03-05.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import Foundation
import AVFoundation

// create variable for avplayer

var audioPlayer: AVAudioPlayer?

// create mood obj variable


func playSound(sound: String) {
    
    guard let path = Bundle.main.path(forResource: sound, ofType: "mp3") else { return }
    let url = URL(fileURLWithPath: path)
    
    do {
        
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
        audioPlayer?.numberOfLoops = -1
        
    } catch {
        // could not load file
        return
        
    }
    
    
}



func stopSound() {
    
    audioPlayer?.stop()
}


