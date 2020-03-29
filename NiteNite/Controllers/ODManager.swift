//
//  DetailViewController.swift
//  NiteNite
//
//  Created by Nick Iden on 2020-03-28.
//  Copyright © 2020 Nick Iden. All rights reserved.
//

import Foundation
import SwiftUI



class ODRManager {

  // set nsbr property and init of odrmanager class
  static let shared = ODRManager()
  var currentRequest: NSBundleResourceRequest?
    
    // create function that sets state of request
    func requestAssetWith(tag: String,
                    onSuccess: @escaping () -> Void,
                    onFailure: @escaping (NSError) -> Void) {
        
      // create object
      currentRequest = NSBundleResourceRequest(tags: [tag])
      
      // set load priority
      currentRequest?.loadingPriority = NSBundleResourceRequestLoadingPriorityUrgent
      // set preservation priority
      Bundle.main.setPreservationPriority(1.0, forTags: ["image_prefetch", "sounds_prefetch"])
        
      //verify object was created
      guard let request = currentRequest else { return }

      request.beginAccessingResources { (error: Error?) in
            
        // if error then call error handler
        if let error = error {
          onFailure(error as NSError)
          return
        }
        // if no error pass onSuccess handler
        onSuccess()
      }
    }
    
}

