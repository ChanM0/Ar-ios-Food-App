//
//  MainNavController.swift
//  ArApp
//
//  Created by Mike on 12/5/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation
import UIKit

class MainNavController: UINavigationController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if getLoggedInStatus(){
//            let mainPageController = MainPageController()
            print("Hey we working")
            self.performSegue(withIdentifier: "goToHome", sender: self)
            
        }else{
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }
    }
    
    
    func getLoggedInStatus() -> Bool{
        return UserDefaults.standard.getLoggedInStatus()
    }
}
