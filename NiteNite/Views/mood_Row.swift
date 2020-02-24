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
                // create a text displaying cat name
                Text(self.categoryName)
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                   
                    Spacer()
                
            }
            ScrollView(.horizontal, showsIndicators: false) {
            // create a for each to get all objects
                HStack(alignment: .top, spacing: 0) {
                    ForEach (self.moods) {mood in
                        
                        // create nav button
                        NavigationLink(destination: Mood_Detail(mood: mood))
                        {

                            Mood_Items(mood: mood)
                                .frame(width: 300, height: 270)
                                .padding(.trailing, 20)
                                .padding(.bottom)
                        }
                        
                          
                    }
                }
            }.id(UUID().uuidString)
        }
        
        
       
    }
}

struct mood_Row_Previews: PreviewProvider {
    static var previews: some View {
        mood_Row(categoryName: moodData[0].category.rawValue, moods: moodData)
    }
}
