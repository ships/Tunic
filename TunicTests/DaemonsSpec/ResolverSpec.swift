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

extension String: Error {}

class ResolverSpec: QuickSpec {
    override func spec() {
        var subject: Resolver?
        var spy: MockProcessDouble?

        beforeEach {
            let factory = MockProcessFactory()
            spy = MockProcessDouble()
            stub(factory) { stub in
                when(stub.makeProcess(cmd: "consul")).then({ _ in
                    return spy!
                })
            }
            subject = Resolver(processFactory: factory)
        }

        describe("#enable") {
            it("initiates a process of type consul") {
                stub(spy!) { s in
                    when(s.run()).then({ () in })
                }

                let succeeded = subject!.enable()
                expect(succeeded).to(beTrue())
                verify(spy!).run()
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
