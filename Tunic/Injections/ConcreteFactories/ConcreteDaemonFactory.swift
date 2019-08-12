//
//  SimpleDaemonFactory.swift
//  Tunic
//
//  Created by Early Evening on 8/12/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

class ConcreteDaemonFactory: DaemonFactory {
    let processFactory: ProcessFactory
    init(pf: ProcessFactory) {
        processFactory = pf
    }

    func resolver(for site: SiteConfig) -> Daemon {
        return Resolver(processFactory: processFactory, site: site)
    }
}
