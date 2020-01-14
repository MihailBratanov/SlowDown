//
//  ViewController.swift
//  SlowDown
//
//  Created by Mihail Bratanov on 11/01/2020.
//  Copyright © 2020 Mihail Bratanov. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Button1.isEnabled=true;
        Button2.isEnabled=false;
        Button3.isEnabled=false;
        Button4.isEnabled=false;
        Button5.isEnabled=false;
        Button6.isEnabled=false;
        Button7.isEnabled=false;
    let center = UNUserNotificationCenter.current()
    
    center.requestAuthorization(options: [.alert, .sound])
    { (granted, error) in
    
    }
    let content = UNMutableNotificationContent()
        content.title="hello"
        content.body="I am the body"
        
     let date = Date().addingTimeInterval(5)
     
        let dateComponents=Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)

   let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    
        let uuidString = UUID().uuidString
   let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
    
        center.add(request) { (error) in
            //check error parameter
        }
    }
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!

    //ACTIONS:
    @IBAction func getContent(_ sender: Any) {
        Button2.isEnabled=true;
        performSegue( withIdentifier: "viewContent1", sender: self)

    }
    
    @IBAction func getPage2(_ sender: Any) {
        Button3.isEnabled=true;
        performSegue( withIdentifier: "viewContent2", sender: self)

    }
    
  
    @IBAction func getPage3(_ sender: Any) {
        Button4.isEnabled=true;
        performSegue( withIdentifier: "viewContent3", sender: self)
    }
   
    
    @IBAction func getPage4(_ sender: Any) {
        Button5.isEnabled=true;
        performSegue( withIdentifier: "viewContent4", sender: self)

    }
    
    @IBAction func getPage5(_ sender: Any) {
        Button6.isEnabled=true;
        performSegue( withIdentifier: "viewContent5", sender: self)

    }
    
    @IBAction func getPage6(_ sender: Any) {
        Button7.isEnabled=true;
        performSegue( withIdentifier: "viewContent6", sender: self)

    }
    
    @IBAction func getPage7(_ sender: Any) {
    performSegue( withIdentifier: "viewContent7", sender: self)

    }
}
