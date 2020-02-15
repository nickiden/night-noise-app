//
//  mood_Row.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-14.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct mood_Row: View {
    // vars for rows
    var categoryName:String
    var moods:[Mood]
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(self.categoryName)
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                Spacer().padding(.leading)
                
            }
            ScrollView(){
            // create a for each to get all objects
                HStack(alignment: .top) {
                    ForEach (moods, id: \.name) {mood in
                        Mood_Items(mood: mood)
                            .frame(width: 300, height: 250)
                            .padding(.trailing, 20.0)
                            .padding(.top)
                    }
                }
            }
        }
        
        
       
    }
}

struct mood_Row_Previews: PreviewProvider {
    static var previews: some View {
        mood_Row(categoryName: "Ocean", moods: moodData)
    }
}
