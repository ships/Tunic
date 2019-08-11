//
//  Resolver.swift
//  Tunic
//
//  Created by Early Evening on 7/25/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation

class Resolver: Daemon {
    static let cmd = "consul"
    let task: ProcessDouble

    init(processFactory: ProcessFactory) {
        task = processFactory.makeProcess(cmd: Resolver.cmd)
    }

    func enable() -> Bool {
        do {
            try task.run()
        } catch {
            return false
        }

        return true
    }
}
