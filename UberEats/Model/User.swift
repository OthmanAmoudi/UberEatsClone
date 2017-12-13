//
//  User.swift
//  UberEats
//
//  Created by Othman Mashaab on 13/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import Foundation
import SwiftyJSON

class User {
    var name : String?
    var email : String?
    var pictureURL: String?
    var id: String?
    
    static let current = User()
}
