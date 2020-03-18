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
           
            Text("1. This application is for entertainment purposes only. This is not for medical. Nothing stated in this app should replace the advice of a medical professional.").padding()
            Text("2. All the recordings in the NiteNite app are written, recorded, and produced by Nick Iden and Hannah Iden. To use any of the recording now and future must be approved. Failure to do so may result in legal action.").padding()
            Text("3. We have the right to change any element including text, audio, style of this app at anytime without notice. ").padding()
            Text("4. NiteNite is free to use but does have advertisments on the pages. We have the right to change that at any given time without notice.").padding()
            Text("5. This application may have errors in the text, audio, or bugs in the code. We are going to do our best to make the experience great, however, if you find something please let us know and we will fix it as soon as we can.").padding()
            Text("6. No offencive behavour wll be tolerated. If anythig is shared on any of our membership sites we have the right to remove you and cancel your subscription and/or services.").padding()
        }
    }
}

struct Terms_View_Previews: PreviewProvider {
    static var previews: some View {
        Terms_View()
    }
}
