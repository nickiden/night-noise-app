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
    Dictionary(
        grouping: moodData,
        by: {$0.category.rawValue}
    )
}
    // set state to stop sound
    var soundOff: Bool = true
    var request: NSBundleResourceRequest!
    
    let array = ["image_prefetch","sounds_prefetch"]
    
    // make download function here?
  
    

    
    var body: some View {
        
        
        
     // function made based on site https://cartoonsmart.com/on-demand-resources-in-ios9-with-spritekit/
       AssetDownloadManager.shared.loadResourcesWithTag(tagArray: array)
       var bodyView: some View {
        VStack {
            
            NavigationView {
                
                List {
                
                    ForEach(categories.keys.sorted(), id: \.self ) {key in
                    mood_Row(categoryName: key, moods: self.categories[key]!)
                       
                        .frame(height: 325)
                        .padding(.top)
                        
                        
                    }
                    .navigationBarTitle(Text("NiteNite"))
                }
            }
              
            // call banner method for add
            BannerView()
        }
      }
      return bodyView
    }
    
    
}







struct Home_View_Previews: PreviewProvider {
    static var previews: some View {
        Home_View()
    }
}
