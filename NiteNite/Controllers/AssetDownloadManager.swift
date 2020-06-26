//
//  AssetDownloadManager.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-05-07.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import Foundation
import SwiftUI


class AssetDownloadManager{
    
    @State var assetDownload = false
    
     static let shared = AssetDownloadManager()
    
     func loadResourcesWithTag(tagArray: Array <String>){
           
       let tags = NSSet(array: tagArray)
       let resourceRequest:NSBundleResourceRequest = NSBundleResourceRequest(tags: tags as! Set<String>)
        
        // set load priority
        resourceRequest.loadingPriority = NSBundleResourceRequestLoadingPriorityUrgent
        
       resourceRequest.conditionallyBeginAccessingResources {(resourcesAvailable: Bool) -> Void in
           if resourcesAvailable {
            
                print("On Demand Resources already available")
                self.assetDownload = true
            
           } else {
               resourceRequest.beginAccessingResources {error-> Void in
                   guard error == nil else {
                       print("Error: (error)")
                       return
                   }
                    print("On Demand Resources downloaded, will now display them")
                    self.assetDownload = true
            
               }
           }
           
      
       }
        
    }
}
