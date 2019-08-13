//
//  Supervisor.swift
//  Tunic
//
//  Created by Early Evening on 8/11/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

class Supervisor {
    let daemonFactory: DaemonFactory

    var resolver: Daemon?

    init(df: DaemonFactory) {
        daemonFactory = df
    }

    func connectionRequested(to site: SiteConfig) {
        let resolver = daemonFactory.resolver(for: site)
        if resolver.enable() {
            self.resolver = resolver
        }
    }

    func cleanup() {
        self.resolver?.stop()
    }

    static let instance: Supervisor = Supervisor(df: ConcreteDaemonFactory(pf: ConcreteProcessFactory()))
}
