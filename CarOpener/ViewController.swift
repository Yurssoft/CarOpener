//
//  ViewController.swift
//  CarOpener
//
//  Created by Yurii Boiko on 7/26/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func enableSiri(_ sender: UIButton) {
        INPreferences.requestSiriAuthorization { (status) in
            print(status)
        }
        INVocabulary.shared().setVocabularyStrings(["my Mazda", "my Audi", "Audi"], of: .carName)
    }

    @IBAction func openButton(_ sender: Any) {
        Caller.open()
    }
    
    @IBAction func closeButton(_ sender: Any) {
        Caller.close()
    }
}

