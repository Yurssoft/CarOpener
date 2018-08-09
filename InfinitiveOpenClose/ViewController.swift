//
//  ViewController.swift
//  InfinitiveOpenClose
//
//  Created by Yurii Boiko on 7/27/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import UIKit

private enum DoorState {
    case open, closed
}

class ViewController: UIViewController {

    private var doorState = DoorState.closed

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.global().async {
            self.infinitiveCall()
        }
    }

    func infinitiveCall() {
        switch doorState {
        case .open:
            Caller.close {
                print("Closed doors")
                self.doorState = .closed
                self.infinitiveCall()
            }
        case .closed:
            Caller.open {
                print("Opened doors")
                self.doorState = .open
                self.infinitiveCall()
            }
        }
    }
}

