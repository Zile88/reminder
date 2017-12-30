//
//  DataManager.swift
//  reminder
//
//  Created by iOS Akademija on 12/1/17.
//  Copyright © 2017 iOSakademija. All rights reserved.
//

import Foundation

final class DataManager {
    var numberSalofalk: Int = UserDefaults.safolk {
        didSet {
            UserDefaults.safolk = numberSalofalk
        }
    }
    
    var numberImuran : Int = UserDefaults.imur {
        didSet {
            UserDefaults.imur = numberImuran
        }
    }
            
        
    
    var doseSalofalk = 6
    var doseImuran = 3
    
    func salofalkLeft(){
//        var x = number
//        x = x - dose
//        return (x / dose)
        numberSalofalk = numberSalofalk - doseSalofalk
        numberImuran = numberImuran - doseImuran
    }
    
//    func drugAdded() {
//        numberSalofalk +=
//    }
    
    
//    func imuranLeft(number : Int  ) -> Int {
//
//    }
}
