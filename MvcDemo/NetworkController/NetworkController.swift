//
//  NetworkController.swift
//  MvcDemo
//
//  Created by appinventiv on 15/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import Foundation


func getSignIn(username: String, password: String, url: String) {
    
    let postData = NSMutableData(data: "UserName=\(username)".data(using: String.Encoding.utf8)!)
    postData.append("&Password=\(password)".data(using: String.Encoding.utf8)!)
    
    let request = NSMutableURLRequest(url: NSURL(string: url)! as URL,
                                      cachePolicy: .useProtocolCachePolicy,
                                      timeoutInterval: 10.0)
    
    request.httpMethod = "POST"
    
    request.httpBody = postData as Data
    
    URLSession.shared.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if let err = error {
            print(err)
        }
        else {
            
        let json = JSON(data!)
            print(json)
            
//           let _ = Person(username: json["form"]["UserName"].string ?? "", password: json["form"]["Password"].string ?? "")
////            Person.init(username: , password: )
            
             let data = Person(json: json)
            
         
            
        }
        
    }).resume()
    
}


