//
//  Terms_View.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-03-10.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import SwiftUI

struct Terms_View: View {
    var body: some View {
        
        VStack {
            Text("Terms and Conditions")
                .font(.title)
                .padding()
            
            ScrollView (showsIndicators: false) {
            VStack {
                
            Text("1. This application is for entertainment purposes only. This is not to replace medical advice..ever.").padding()
            Text("2. All the recordings in the NiteNite app are written, recorded, and produced by us and our affiliates. If you want to use something please ask. We normally say yes.").padding()
            Text("3. We have the right to change any element including text, audio, style of this app at anytime without notice. ").padding()
            Text("4. NiteNite is free to use but does have advertisments on the pages. We have the right to change that at any given time without notice.").padding()
            Text("5. This application may have errors in the text, audio, or bugs in the code. Let us know what you find and we will try and fix it.").padding()
            Text("6. No offensive behavour wll be tolerated. If anythig is shared on any of our membership sites we have the right to remove you and cancel your subscription and/or services.").padding()
            }
            }
        }
    }
}

struct Terms_View_Previews: PreviewProvider {
    static var previews: some View {
        Terms_View()
    }
}
