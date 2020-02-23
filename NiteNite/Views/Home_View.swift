//
//  ContentView.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-14.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct Home_View: View {
    
    var categories:[String:[Mood]] {
    .init(
        grouping: moodData,
        by: {$0.category.rawValue}
    )
}
    
    
    var body: some View {
        
        NavigationView {
            
            List (categories.keys.sorted(),id: \String.self ) {key in
                mood_Row(categoryName: "\(key)".uppercased(), moods: self.categories[key]!)
                    .frame(height: 320)
                .padding(.top)
                
                

                
                }.navigationBarTitle(Text("Nite Nite"))
        }
    }
}


struct Home_View_Previews: PreviewProvider {
    static var previews: some View {
        Home_View()
    }
}
