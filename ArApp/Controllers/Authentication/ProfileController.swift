//
//  ProfileController.swift
//  ArApp
//
//  Created by Mike on 12/4/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class ProfileController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !getLoggedInStatus(){
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }
    }
    
    
    @IBAction func logoutButtonAction(_ sender: UIButton) {
        
        if getLoggedInStatus(){
            logoutUser()
            self.performSegue(withIdentifier: "goToHome", sender: self)
        }
    }
    
    func logoutUser(){
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        UserDefaults.standard.setLoggedInStatus(value: false)
    }
    
    func getLoggedInStatus() -> Bool{
        return UserDefaults.standard.getLoggedInStatus()
    }
    
    
}
