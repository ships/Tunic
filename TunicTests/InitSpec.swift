//
//  InitSpec.swift
//  TunicTests
//
//  Created by Early Evening on 7/23/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Foundation
import Quick
import Nimble

extension String: Error {}

class InitSpec: QuickSpec {
    override func spec() {
        it("runs the test suite") {
            print("this test should appear in the test output")
        }
    }
}
