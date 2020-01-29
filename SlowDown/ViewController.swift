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

 
    let defaults = UserDefaults.standard;
    
    struct Keys{
        static let lastOpened = "lastOpened"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Button1.isEnabled=true;
        initialiseButtonArray()
        loadLastState()
    }
      
       
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!

    var lastOpened = 1;
    var buttonList = [UIButton]()

    //ACTIONS:
    @IBAction func getContent(_ sender: Any) {
        
        Button2.isEnabled=true;
        updateSavedState(lastVisitedValue:lastOpened);
        performSegue( withIdentifier: "viewContent1", sender: self)

    }
    
    @IBAction func getPage2(_ sender: Any) {
        buttonList.append(Button2)
        lastOpened = 1;
              updateSavedState(lastVisitedValue:lastOpened);
        Button3.isEnabled=true;
        performSegue( withIdentifier: "viewContent2", sender: self)

    }
    
  
    @IBAction func getPage3(_ sender: Any) {
        buttonList.append(Button3)
        lastOpened = 2;
              updateSavedState(lastVisitedValue:lastOpened);
        Button4.isEnabled=true;
        performSegue( withIdentifier: "viewContent3", sender: self)
    }
   
    
    @IBAction func getPage4(_ sender: Any) {
        buttonList.append(Button4)
        lastOpened = 3;
              updateSavedState(lastVisitedValue:lastOpened);
        Button5.isEnabled=true;
        performSegue( withIdentifier: "viewContent4", sender: self)

    }
    
    @IBAction func getPage5(_ sender: Any) {
        buttonList.append(Button5)
        lastOpened = 4;
              updateSavedState(lastVisitedValue:lastOpened);
        Button6.isEnabled=true;
        performSegue( withIdentifier: "viewContent5", sender: self)

    }
    
    @IBAction func getPage6(_ sender: Any) {
        buttonList.append(Button6)
        lastOpened = 5;
              updateSavedState(lastVisitedValue:lastOpened);
        Button7.isEnabled=true;
        performSegue( withIdentifier: "viewContent6", sender: self)

    }
    
    @IBAction func getPage7(_ sender: Any) {
        buttonList.append(Button7)
        lastOpened = 6;
              updateSavedState(lastVisitedValue:lastOpened);
    performSegue( withIdentifier: "viewContent7", sender: self)

    }
    func updateSavedState(lastVisitedValue:Int){
        defaults.set(lastVisitedValue, forKey:Keys.lastOpened)
    }
    func loadLastState(){
        
        let index = defaults.integer(forKey: Keys.lastOpened)
        for i in 0..<index{
            buttonList[i].isEnabled=true;
        }
        for n in index+1..<buttonList.count{
            buttonList[n].isEnabled=false;
        }
    }
    func initialiseButtonArray(){
        buttonList.append(Button1);
        buttonList.append(Button2);
        buttonList.append(Button3);
        buttonList.append(Button4);
        buttonList.append(Button5);
        buttonList.append(Button6);
        buttonList.append(Button7);
    }
}
