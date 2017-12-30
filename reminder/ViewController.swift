//
//  ViewController.swift
//  reminder
//
//  Created by iOS Akademija on 12/1/17.
//  Copyright © 2017 iOSakademija. All rights reserved.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            self.isGrantedNotificationAccess = granted
            if !granted {
                //add alert to complain to user
            }
        }
        // test(x)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var data = DataManager()
    
    func labelPresentation() {
        label1.text = String(describing : data.numberSalofalk)
        label2.text = String(describing : data.numberImuran)
    }
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBAction func calculate(_ sender: UIButton) {
        data.salofalkLeft()
        labelPresentation()
        
    }
    
    @IBAction func insertDose(_ sender: UIButton) {
        if let numberSalc = textField1.text, let numberImur = textField2.text {
            if let numberSal = Int(numberSalc), let numberImu = Int(numberImur) {
                data.numberImuran += numberSal
                data.numberSalofalk += numberImu
                labelPresentation()
                
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        labelPresentation()
        
    }
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    //    var proba = textField1.text
    
    var isGrantedNotificationAccess = false
    
    var x = 230
    
    @IBAction func check(_ sender: UIButton) {
        test()
    }
}



extension ViewController {
    
    
    func test(){
        if data.numberImuran < 300 {
            let content = makePizzaContent()
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 15.0, repeats: false)
            addNotification(trigger: trigger, content: content, identifier: "message.pizza")
        }
    }
    
    
    
    
    func makePizzaContent() -> UNMutableNotificationContent{
        let content = UNMutableNotificationContent()
        content.title = "U deficitu"
        content.body = "Naruciti lek"
        content.userInfo = ["step": 0]
        return content
    }
    func addNotification(trigger:UNNotificationTrigger?, content: UNMutableNotificationContent,identifier: String){
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request){
            (error) in
            if error != nil {
                print("error adding notification: \(error?.localizedDescription)")
            }
        }
    }
}











