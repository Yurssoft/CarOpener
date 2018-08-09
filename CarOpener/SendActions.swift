//
//  SendActions.swift
//  CarOpener
//
//  Created by Yurii Boiko on 7/26/18.
//  Copyright © 2018 Yurssoft. All rights reserved.
//

import Foundation

class Caller {
    static func open(completion: @escaping () -> () = { }) {
        let url = URL(string: "http://192.168.4.1/OPEN")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            completion()
            guard error == nil else {
                print("error=\(String(describing: error))")
                return
            }
        }
        task.resume()

    }
    static func close(completion: @escaping () -> () = { }) {
        let url = URL(string: "http://192.168.4.1/CLOSE")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            completion()
            guard error == nil else {
                print("error=\(String(describing: error))")
                return
            }
        }
        task.resume()

    }
}
