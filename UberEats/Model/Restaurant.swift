//
//  Restaurants.swift
//  UberEats
//
//  Created by Othman Mashaab on 17/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import SwiftyJSON
import Firebase
import UIKit

class Restaurants {
    
    var id:String?
    var name:String?
    var address:String?
    var logoURL:String?
    var phone:String?
    
    init(json:JSON){
        id = json["id"].string
        name = json["name"].string
        address = json["address"].string
        logoURL = json["logoURL"].string
        phone = json["phone"].string
    }
    
    
}
