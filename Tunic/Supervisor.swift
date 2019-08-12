//
//  Supervisor.swift
//  Tunic
//
//  Created by Early Evening on 8/11/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

class Supervisor {
    let daemonFactory: DaemonFactory

    func connectionRequested(to site: SiteConfig) {
        let resolver = daemonFactory.resolver(for: site)
        resolver.enable()
    }

    init(df: DaemonFactory) {
        daemonFactory = df
    }

    static let instance: Supervisor = Supervisor(df: ConcreteDaemonFactory(pf: ConcreteProcessFactory()))
}
