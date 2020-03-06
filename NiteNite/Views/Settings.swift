//
//  Settings.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-16.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct Settings: View {
    // create state for toggle
    @State private var LoopMode = false
    
    
    
    
    var body: some View {
        Form {
         
            // section about developer and links
            Section(header: Text("About").font(.title)){
                           
                HStack {
                    Button(action: {}){
                                   Text("Developer")
                                       
                            
                    }
                
                    
                    Spacer()
                    Text("Nick Iden")
                    }
                HStack {
                    Text("Sound Engineer")
                        
                        
                        
                    Spacer()
                    Text("Nick Iden")
                }
                HStack {
                    Text("Assistant Sound")
                        
                        
                        
                    Spacer()
                    Text("Hannah Iden")
                }
               
                
                               
                        Button(action: {}){
                            Text("YouTube Channel")
                                
                        }
                           
                    
                    }
            
            
            // Description about the app
            Section(header: Text("Description").font(.title))
            {
                Text("Nite Nite is a simple, relaxing app with no subsriptions or hidden fees. Just soothing sounds to help you sleep.")
                    
                    Text("If you would like to make it add free just click the link below.")
            }
            
            // Support information for application
            Section(header: Text("Support").font(.title)){
                
                Button(action: {}){
                    Text("Contact")
                        
                }
                    
                Button(action: {}){
                    Text("Terms and Conditions")
                        
                }
                Button(action: {}){
                    Text("FAQ")
                        
                }
                    
            }
            
            // create link to paid version
            Section {
                // button to offer ad free app. The action will connect to app store
                
                HStack {
                   Spacer()
                    Button(action: {}) {Text("Remove Ads")}
                    Spacer()
                }
            }
            
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
