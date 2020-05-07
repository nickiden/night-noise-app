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
    // singleton method call instance of itself
  static let shared = ODRManager()
  var currentRequest: NSBundleResourceRequest?
 
    
    // create function that sets state of request
    func requestAssetWith(tag: String,
                          onSuccess: @escaping () -> Void,
                          onFailure: @escaping (Error) -> Void)
                          ->NSBundleResourceRequest {
                            

      // create object
      let currentRequest = NSBundleResourceRequest(tags: [tag])
      
      // set load priority
      currentRequest.loadingPriority = NSBundleResourceRequestLoadingPriorityUrgent
                            
      // set conditional to check if resorce already downloaded
                            
      
        // download assets from store
        currentRequest.beginAccessingResources { error in
            OperationQueue.main.addOperation {
                if let error = error {
                    onFailure(error)
                } else {
                    onSuccess()
                }
                
            }
        }
        return currentRequest
        
      }
    
    
// method for error handling is needed
    
    }
    
    
  
    
// nsset tags based on documentation
    
    
 













