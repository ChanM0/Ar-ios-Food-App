//
//  RegisterLoginController.swift
//  ArApp
//
//  Created by Mike on 12/4/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation

import UIKit
import FirebaseAuth

class RegisterLoginController: UIViewController{
    
    
//    text field variables outlets
    
//    @IBOutlet weak var emailTextField: UITextField!
//
//    @IBOutlet weak var passwordTextField: UITextField!
//
//
//    override func viewDidLoad(){
//
//        super.viewDidLoad()
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//
//    //    Ui buttons
//    @IBAction func createMyAccountButton(_ sender: UIButton) {
//
//        //  TODO : Perform form validation
//
//        //  var formValues: [String: String] = [:]
//        //  formValues["email"] = emailTextField.text
//        //  formValues["password"] = passwordTextField.text
//
//        if let email = emailTextField.text, let password = passwordTextField.text {
//            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
//                // ...
//                guard let user = authResult?.user else {
//                    //TODO: set up error messages
//                    return
//                }
//                print(user)
//                self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
//                //TODO: set up login, set user as logged in with
//                // Set user defaults
//                // navigate to home screen
//            }
//        }
//
//    }
//    
//    @IBAction func loginButton(_ sender: UIButton) {
//
//        // navigate to new view
//        if let email = emailTextField.text, let password = passwordTextField.text {
//            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
//                // ...
//                if let u = user {
//                    print(u)
//                    self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
//                    // Set user defaults
//                    // navigate to home screen
//                }
//                else{
//                    // handle errors
//                }
//            }
//        }
//    }
//    
//    
//      //Other ways to login
//    @IBAction func twitterButton(_ sender: UIButton) {
//        print("hello")
//    }
//
//    @IBAction func googleButton(_ sender: UIButton) {
//        print("hello")
//    }
//
//    @IBAction func faceBookButton(_ sender: UIButton) {
//        print("hello")
//    }
//
//    
//    
}
