//
//  UserDefaults-Extensions.swift
//  reminder
//
//  Created by iOS Akademija on 12/16/17.
//  Copyright © 2017 iOSakademija. All rights reserved.
//

import Foundation

extension UserDefaults {
    private enum Key: String {
        case safolk
        case imur
    }
    
    static var safolk: Int {
        get {
            let defs = UserDefaults.standard
            
            let num = (defs.object(forKey: Key.safolk.rawValue) as? Int) ?? 150
            
            return num
        }
        set {
            let defs = UserDefaults.standard
            defs.set(newValue, forKey: Key.safolk.rawValue)
            defs.synchronize()
        }
    }
    
    static var imur: Int {
        get {
            let defs = UserDefaults.standard
            
            let num = (defs.object(forKey : Key.imur.rawValue) as? Int) ?? 200
            
            return num
        }
        set {
            let defs = UserDefaults.standard
            
            defs.set(newValue, forKey : Key.imur.rawValue)
            defs.synchronize()
        }
    }
    
    
    
    
    
    
    
    
}
