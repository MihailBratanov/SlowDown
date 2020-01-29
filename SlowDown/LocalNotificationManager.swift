//
//  LocalNotificationManager.swift
//  SlowDown
//
//  Created by Mihail Bratanov on 28/01/2020.
//  Copyright © 2020 Mihail Bratanov. All rights reserved.
//

import UIKit

class LocalNotificationManager: UIViewController {
    var notifications = [Notification]()
    
    struct Notification {
        var id:String
        var title:String
        var datetime:DateComponents
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
