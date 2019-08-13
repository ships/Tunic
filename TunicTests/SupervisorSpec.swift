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

class SupervisorSpec: QuickSpec {
    override func spec() {
        var subject: Supervisor?
        var factory: MockDaemonFactory?
        var daemon: MockDaemon?

        beforeEach {
            factory = MockDaemonFactory()
            daemon = MockDaemon()
            stub(daemon!) { s in
                when(s.enable()).thenReturn(true)
                when(s.stop()).thenDoNothing()
            }
            stub(factory!) { s in
                when(s.resolver(for: any())).thenReturn(daemon!)
            }
            subject = Supervisor(df: factory!)
        }

        describe("#connectionRequested") {
            it("creates and launches a daemon with the given config") {
                let config = SiteConfig(
                    raftHosts: ["raft"],
                    datacenter: "dc",
                    serviceDomain: "mydom")
                subject!.connectionRequested(to: config)

                let c = ArgumentCaptor<SiteConfig>()
                verify(factory!).resolver(for: c.capture())
                expect(c.value).to(equal(config))

                verify(daemon!).enable()
            }
        }

        describe("#cleanup") {
            it("stops any daemons that were started") {
                let config = SiteConfig(
                    raftHosts: ["raft"],
                    datacenter: "dc",
                    serviceDomain: "mydom")
                subject!.connectionRequested(to: config)
                subject!.cleanup()

                verify(daemon!).stop()
            }
        }
    }
}
