//
//  IntentHandler.swift
//  siri_car_opener
//
//  Created by Yurii Boiko on 8/10/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import Intents

class IntentHandler: INExtension, INSetCarLockStatusIntentHandling {
    func handle(intent: INSetCarLockStatusIntent, completion: @escaping (INSetCarLockStatusIntentResponse) -> Void) {
        print("intent - \(intent)")
        print("car name \(String(describing: intent.carName))")
        print("car name \(String(describing: intent.locked))")
        guard let locked = intent.locked else {
            completion(INSetCarLockStatusIntentResponse(code: .failure, userActivity: nil))
            return
        }
        locked ? Caller.close() : Caller.open()

        if locked {
            print("locking car")
            Caller.close {
                print("locking car finished")
                completion(INSetCarLockStatusIntentResponse(code: .success, userActivity: nil))
            }
        } else {
            print("unlocking car")
            Caller.open() {
                print("unlocking car finished")
                completion(INSetCarLockStatusIntentResponse(code: .success, userActivity: nil))
            }
        }
    }
}

