//
//  BannerView.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-03-12.
//  Copyright © 2020 Nick Iden. All rights reserved.
//
//  Comments:
//              This view has all the code for the banner featuring google
//              advertisments.

import SwiftUI
import GoogleMobileAds

struct BannerView: View {
    
    
    var body: some View {
        
        
       
           
            HStack {
                Spacer()
                AdView().frame(width: 320, height: 60)
               Spacer()
            }
        
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
    
}

struct AdView : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<AdView>) -> GADBannerView {
      
        let banner = GADBannerView(adSize: kGADAdSizeBanner)
        banner.adUnitID = "ca-app-pub-2393234776205590/8485661112"
        banner.rootViewController = UIApplication.shared.windows.first?.rootViewController
        banner.load(GADRequest())
        return banner
    }
    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdView>) {
        
    }
}
