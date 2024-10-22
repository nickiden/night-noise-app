//
//  Mood_Items.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-14.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
//  Comments:
//              Single view of item with description and image layout.

import SwiftUI

struct Mood_Items: View {
    var mood:Mood
    
    var body: some View {
        VStack {
            Image(mood.imageName) //access image
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300.0,height:200)
               
                .cornerRadius(20)
             .shadow(radius: 10)
                
            
            VStack (alignment: .leading, spacing: 5.0) {
            
            Text(mood.name)
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                
            
            Text(mood.description)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40.0)
                
            }
               
            
        }.padding(10)
    }
}

struct Mood_Items_Previews: PreviewProvider {
    static var previews: some View {
        Mood_Items(mood: moodData[3] ) // call first instance
        
    }
}
