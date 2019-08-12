//
//  ConnectViewController.swift
//  Tunic
//
//  Created by Early Evening on 8/11/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Cocoa

class ConnectViewController: ViewController {
    @IBOutlet weak var connectBtn: NSButton?
    @IBOutlet weak var raftHostsFld: NSTextField?
    @IBOutlet weak var datacenterFld: NSTextField?
    @IBOutlet weak var domainFld: NSTextField?

    @IBAction func connectBtnWasTapped(sender: AnyObject) {
        guard let connectBtn = connectBtn,
            let raftHostsFld = raftHostsFld,
            let datacenterFld = datacenterFld,
            let domainFld = domainFld else {
                fatalError("impossible condition: UI failed to populate")
        }

        let c = SiteConfig(raftHosts: [raftHostsFld.stringValue], datacenter: datacenterFld.stringValue, serviceDomain: domainFld.stringValue)
        NSLog("connection requested to site with config: \(c)")

        Supervisor.instance.connectionRequested(to: c)
    }
}
