//
//  UserDefaults_Helper.swift
//  ArApp
//
//  Created by Mike on 12/5/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import Foundation

extension UserDefaults{
    
    func setLoggedInStatus(value: Bool){
        set(value, forKey: "isLoggedIn")
        synchronize()
    }
    
    func getLoggedInStatus() -> Bool{
        return bool(forKey: "isLoggedIn")
    }
}
