//
//  File.swift
//  Tunic
//
//  Created by Early Evening on 8/10/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Network

struct SiteConfig {
    let raftHosts: [String]
    let datacenter: String
    let serviceDomain: String
}

extension SiteConfig: Equatable {}
