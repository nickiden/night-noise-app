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
                   
                    Text("Developer")
                
                    
                    Spacer()
                    Text("Nick Iden")
                    }
                HStack {
                    Text("Sound Engineer")
                        
                        
                        
                    Spacer()
                    Text("Nick Iden")
                }
                HStack {
                    Text("Assistant Sound Engineer")
                        
                        
                        
                    Spacer()
                    Text("Hannah Iden")
                }
               
                
                               
                        Button(action: {
                            
                            // create action to open up youtube channl
                            if let url = URL(string: "https://www.youtube.com/channel/UC-8nyTV2BmksRk9t_uztqaQ?view_as=subscriber") {
                                UIApplication.shared.open(url)
                            }
                            
                        }){
                            Text("YouTube Channel")
                                
                        }
                           
                    
                    }
            
            
            // Description about the app
            Section(header: Text("Description").font(.title))
            {
                Text("NiteNite is a simple, relaxing app with no subsriptions or hidden fees. Just soothing sounds to help you sleep.")
                    
                    Text("This project came about to help my friends and family sleep. My daughter and myself designed and recorded the sounds. More sounds will be added as this app grows.")
            }
            
            // Support information for application
            Section(header: Text("Support").font(.title)){
                
                Button(action: {
                    
                            // create action to open up contact page
                            if let url = URL(string: "https://nickiden.com/contact") {
                                UIApplication.shared.open(url)
                            }
                }){
                    Text("Contact")
                }
                
                Button(action: {
                    
                            // create action to open up contact page
                            if let url = URL(string: "https://nickiden.com/app-privacy") {
                                UIApplication.shared.open(url)
                            }
                }){
                    Text("Privacy Policy")
                }
                
            

                    
            }
            
            
            // create link to paid version
            //Section {
                // button to offer ad free app. The action will connect to app store
                
             //   HStack {
             //      Spacer()
             //       Button(action: {}) {Text("Remove Ads")}
             //       Spacer()
             //   }
           // }
            
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
