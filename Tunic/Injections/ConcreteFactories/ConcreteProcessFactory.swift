//
//  File.swift
//  Tunic
//
//  Created by Early Evening on 8/12/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation

class ConcreteProcessFactory: ProcessFactory {
    func makeProcess(cmd: String, args: [String]) -> ProcessDouble {
        let proc = Process()
        proc.arguments = args
        proc.launchPath = cmd

        return proc
    }
}
