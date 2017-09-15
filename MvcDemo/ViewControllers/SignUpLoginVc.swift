//
//  SignUpLoginVc.swift
//  MvcDemo
//
//  Created by appinventiv on 15/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class SignUpLoginVc: UIViewController {
    
    // outlets
    @IBOutlet weak var nameTextField: UITextField!
   
    @IBOutlet weak var passwordTextField: UITextField!
   
    
    
    
    @IBAction func saveBtn(_ sender: UIButton) {
        
        logInWith(userName: nameTextField.text!, password: passwordTextField.text!)
        print("Button Tap")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

   
}
