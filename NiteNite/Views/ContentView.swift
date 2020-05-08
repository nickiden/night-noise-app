//
//  ContentView.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-16.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let array = ["image_prefetch"]
    
    var body: some View {
        
        // Call function to load on-demand resorces
        AssetDownloadManager.shared.loadResourcesWithTag(tagArray: array)
        
        var bodyView: some View {
            
        TabView{
            
            // home view
            Home_View()
            .tabItem {
            
                Image(systemName: "house")
                Text("Home")
                        
                    
            }.tag(0)
            
           
              // Settings
            Settings()
            .tabItem() {
                   
                Image(systemName: "person")
                Text("About")
                //.padding()
                    
            }.tag(1)
            
            // Terms
            Terms_View()
                .tabItem() {
            Image(systemName: "doc.plaintext")
            Text("Terms")
            }
            
        }
        }
        return bodyView
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

