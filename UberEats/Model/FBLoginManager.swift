//
//  FBLoginManager.swift
//  UberEats
//
//  Created by Othman Mashaab on 13/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import Foundation
import FBSDKLoginKit
import SwiftyJSON

class FBLoginManager {
    static let shared = FBSDKLoginManager()
    
    public class func getFBUserData(completion:@escaping()->Void){
        if FBSDKAccessToken.current() != nil {
            let request = FBSDKGraphRequest(graphPath: "me", parameters: ["fields" : "name , email, pictue.type(normal)"])!
            request.start(completionHandler: { (connection, result, error) in
                if error == nil {
                    let json = JSON(result!)
                    print(json)
                    completion()
                }
            })
            
        }
    }
}
