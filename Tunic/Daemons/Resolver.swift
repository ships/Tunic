//
//  Resolver.swift
//  Tunic
//
//  Created by Early Evening on 7/25/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation

class Resolver: Daemon {
    static let cmd = "/usr/local/bin/consul"
    let task: ProcessDouble

    init(processFactory: ProcessFactory, site: SiteConfig) {
        task = processFactory.makeProcess(cmd: Resolver.cmd, args: formatArgs(site: site))
    }

    func enable() -> Bool {
        do {
            try task.run()
        } catch {
            NSLog("enabling resolver daemon: \(error)")
            return false
        }

        return true
    }

    func stop() {
        task.terminate()
    }
}

private func formatArgs(site: SiteConfig) -> [String] {
    let collection = site.raftHosts.reduce(
        ["agent", "-data-dir", "/tmp/consul.d"], { (r, s) -> [String] in
        return r + [
            "-retry-join", s
        ]
    })

    return collection
}
