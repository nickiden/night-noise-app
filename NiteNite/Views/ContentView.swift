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
                
                VStack {
                    Image(systemName: "Home")
                    Text("Home")
                        
                    }
            }.tag(0)
            
            // About
            AboutView()
                .tabItem() {
                    VStack{
                        Image(systemName: "Person")
                         
                        Text("About")
                    }
            }
            
              // Settings
            Settings()
                .tabItem() {
                    VStack{
                        Image(systemName: "Gear")
                        Text("Settings")
                            .padding()
                    }
            }
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
