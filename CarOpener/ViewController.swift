//
//  ViewController.swift
//  CarOpener
//
//  Created by Yurii Boiko on 7/26/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func openButton(_ sender: Any) {
        Caller.open()
    }
    @IBAction func closeButton(_ sender: Any) {
        Caller.close()
    }
}

