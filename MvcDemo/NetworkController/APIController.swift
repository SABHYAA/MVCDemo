//
//  APIController.swift
//  MvcDemo
//
//  Created by appinventiv on 15/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit


func logInWith(userName:String,password:String) {
    
    let signInUrl = "https://httpbin.org/post"
    getSignIn(username: userName, password: password, url: signInUrl)
    
}
