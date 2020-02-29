//
//  UserDefaultsManager.swift
//  MediaFinder
//
//  Created by Ahmed Ezzat on 2/28/20.
//  Copyright © 2020 Ahmed Ezzat. All rights reserved.
//

import Foundation

class UserDefaultsManager {
    // MARK:- Singleton
    private static let sharedInstance = UserDefaultsManager()
    
    static func shared() -> UserDefaultsManager {
        return UserDefaultsManager.sharedInstance
    }
    
    // MARK:- Properties
    var isLoggedIn: Bool {
        set{
            UserDefaults.standard.set(newValue, forKey: UserDefaultsKeys.isLoggedIn)
        } get {
            return UserDefaults.standard.bool(forKey: UserDefaultsKeys.isLoggedIn)
        }
    }
}
