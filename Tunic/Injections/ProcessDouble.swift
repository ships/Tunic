//
//  ProcessDouble.swift
//  Tunic
//
//  Created by Early Evening on 7/25/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation

protocol ProcessDouble {
    func run() throws
}

extension Process: ProcessDouble {}

protocol ProcessFactory {
    func makeProcess(cmd: String, args: [String]) -> ProcessDouble
}
