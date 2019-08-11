//
//  ResolverSpec.swift
//  TunicTests
//
//  Created by Early Evening on 7/25/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

@testable import Tunic
import Quick
import Nimble
import Cuckoo

import Network

extension String: Error {}

class ResolverSpec: QuickSpec {
    override func spec() {
        var subject: Resolver?
        var spy: MockProcessDouble?
        var factory: MockProcessFactory?

        let dummyIpAddress = "192.0.2.0"

        beforeEach {
            factory = MockProcessFactory()
            spy = MockProcessDouble()
            stub(factory!) { stub in
                when(stub.makeProcess(cmd: any(), args: any())).thenReturn(spy!)
            }

            let config = SiteConfig(raftHosts: [dummyIpAddress])
            subject = Resolver(processFactory: factory!, site: config)
        }

        describe("#enable") {
            it("initiates a process of type consul") {
                stub(spy!) { s in
                    when(s.run()).thenDoNothing()
                }

                let desiredConstructorArgs: [String] = [
                    "agent",
                    "-retry-join", dummyIpAddress
                ]

                let succeeded = subject!.enable()
                expect(succeeded).to(beTrue())
                verify(spy!).run()
                let captor = ArgumentCaptor<[String]>()
                verify(factory!).makeProcess(cmd: "consul", args: captor.capture())
                expect(captor.value!).to(equal(desiredConstructorArgs))
            }

            context("when consul process cannot start") {
                beforeEach {
                    stub(spy!) { s in
                        when(s.run()).then({ () in
                            throw "splode"
                        })
                    }
                }

                it("returns false") {
                    let succeeded = subject!.enable()
                    expect(succeeded).to(beFalse())
                    verify(spy!).run()
                }
            }
        }
    }
}
