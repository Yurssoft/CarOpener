//
//  InterfaceController.swift
//  car_Extension
//
//  Created by Yurii Boiko on 7/26/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBAction func open() {
        Caller.open()
    }
    @IBAction func close() {
        Caller.close()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
