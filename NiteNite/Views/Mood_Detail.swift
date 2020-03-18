//
//  Mood_Detail.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-02-15.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct Mood_Detail: View {
    
    // create mood obj variable
   @State var mood: Mood
    
    var body: some View {
        
        VStack {
        List{
            ZStack (alignment: .bottom){
                Image(mood.imageName)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                // rectangle for darkening bottom
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.2)
                .blur(radius: 10)
                
                // create section for title
                HStack{
                    VStack {
                        Text(mood.name)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }.padding()
                    Spacer() // use spacer to force left alignment
                }
                
            }.listRowInsets(EdgeInsets())
            // create section for description
            VStack(alignment: .leading) {
                Text(mood.description)
                    .font(.body)
                    .foregroundColor(Color.black)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                // struct for button
                HStack {
                    Spacer()
                    
                    // call button view
                    Mood_Button(mood: $mood)
                    Spacer()
                }.padding(.top,50)

                
                
            }.padding(.top)
                .padding(.bottom)
            
        }
            // get rid of safe space
            .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
            
            // add banner view for advertisments
            
          //  BannerView()
        
    }
        
    }
}





struct Mood_Detail_Previews: PreviewProvider {
    static var previews: some View {
        Mood_Detail(mood: moodData[3
            ])
    }
}
