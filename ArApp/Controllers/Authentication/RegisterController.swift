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
import GoogleSignIn

class RegisterController: UIViewController, GIDSignInUIDelegate, UITextFieldDelegate, UITextInputTraits {
    
    // Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
 
        
        GIDSignIn.sharedInstance()?.uiDelegate = self
        emailTextField.delegate = self
        
        passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func hideKeyboard(){
        
        emailTextField.resignFirstResponder()
        print("nope")
        passwordTextField.resignFirstResponder()
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("hello it aint happening")
        hideKeyboard()
        return true
    }
    
    //Button actions
    @IBAction func createMyAccountButtonAction(_ sender: UIButton) {
        //  TODO : Perform form validation
        
        //  var formValues: [String: String] = [:]
        //  formValues["email"] = emailTextField.text
        //  formValues["password"] = passwordTextField.text
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            createUserWithFireBase(email: email, password: password)
        }
    }
    
    func createUserWithFireBase(email : String , password : String){
        
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            guard let user = authResult?.user else {
                //TODO: set up error messages
                return
            }
            print("*****")
            print(user)
            print("*****")
            //TODO: set up login, set user as logged in with
            // Set user defaults
            // navigate to home screen
            UserDefaults.standard.setLoggedInStatus(value: true)
            
            self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
        }
    }

    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            attemptToLogin(email: email, password: password)
        }
    }
    
    func attemptToLogin(email : String , password : String){
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let u = user {
                print(u)
                UserDefaults.standard.setLoggedInStatus(value: true)
                self.performSegue(withIdentifier: "goToHomeScreen", sender: self)
            }
            else{
                // handle errors
            }
        }
    }
    
    
//    @IBOutlet weak var googleSignInButton: GIDSigninButton!
    
    @IBAction func twitterButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func facebookActionTwitter(_ sender: UIButton) {
    }
    

}
