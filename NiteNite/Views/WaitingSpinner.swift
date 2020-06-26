//
//  WaitingSpinner.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-05-08.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
// Comments:
//      This view is used when assets is downloading from store

import SwiftUI

struct WaitingSpinner: View {
    
    @State var show = true
    
    var body: some View {
        
        ZStack {
            
        if self.show {
            GeometryReader {_ in
                
                VStack {
                    Loader()
                }
                
            }.background(Color.black.opacity(0.45).edgesIgnoringSafeArea(.all))
        }
     }
    }
}

struct WaitingSpinner_Previews: PreviewProvider {
    static var previews: some View {
        WaitingSpinner()
    }
}

struct Loader : View {
    @State var animate = false
    
    var body : some View {
        
        VStack {
            
            Circle().trim(from: 0, to: 0.8)
                    .stroke(AngularGradient(gradient: .init(colors: [.purple, .blue]),
                        center: .center), style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .frame(width: 45, height: 45)
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            
            Text("Please Wait...").padding(.top)
        }
    .padding(20 )
        .background(Color.white)
    .cornerRadius(15)
        .onAppear {
            // change state
            self.animate.toggle()
        }
        
        
        
    }
}
