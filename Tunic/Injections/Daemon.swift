//
//  Daemon.swift
//  Tunic
//
//  Created by Early Evening on 7/23/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation

protocol Daemon {
    func enable() -> Bool
}

protocol DaemonFactory {
    func resolver(for site: SiteConfig) -> Daemon
}
