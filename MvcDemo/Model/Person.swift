//
//  Person.swift
//  MvcDemo
//
//  Created by appinventiv on 15/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import Foundation

class Person {
    
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
        print(username)
        print(password)
    }
    
    init(json : JSON) {
        self.username = json["form"]["UserName"].string ?? ""
        self.password =  json["form"]["Password"].string ?? ""
    }
    
}
