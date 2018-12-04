//
//  RegisterController.swift
//  ArApp
//
//  Created by Mike on 12/4/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class RegisterController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Button actions
    @IBAction func createMyAccountButtonAction(_ sender: UIButton) {
        //  TODO : Perform form validation
        
        //  var formValues: [String: String] = [:]
        //  formValues["email"] = emailTextField.text
        //  formValues["password"] = passwordTextField.text
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                // ...
                guard let user = authResult?.user else {
                    //TODO: set up error messages
                    return
                    
                }
                print(user)
                self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
                //TODO: set up login, set user as logged in with
                // Set user defaults
                // navigate to home screen
                
            }
            
        }
    }
    
}
