//
//  ProgressBar.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-05-08.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI


struct ProgressBar: View {
    // create states for progress bar
    @State private var progress = 200
    @State private var curProgress = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color(.secondarySystemBackground))
                    .frame(width: 300,height: 24)
                    .cornerRadius(8)
                
                LinearGradient(gradient: Gradient(colors: [
                    progress < 300 ? .orange : Color(.systemTeal),
                    progress < 300 ? .pink : .blue
                ]), startPoint: .top, endPoint: .bottom )
                        .frame(width: CGFloat(progress),height: 24)
                        .cornerRadius(8)
                        .animation(.spring())
            }
            .padding(.bottom)
            HStack {
                Text(progress < 300 ? "Downloading Images" : "Download Complete")
                .bold()
                Spacer()
                Text("\(progress/3)%")
            }
        }
        .frame(width: 272)
        .animation(.spring())
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
