//
//  AppDelegate.swift
//  Tunic
//
//  Created by Early Evening on 7/23/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        Supervisor.instance.cleanup()
    }

}
