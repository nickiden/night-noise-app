//
//  ContentView.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-16.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
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
                    
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

