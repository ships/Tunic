// MARK: - Mocks generated from file: Tunic/Protocols/Daemon.swift at 2019-07-23 23:40:05 +0000

//
//  Daemon.swift
//  Tunic
//
//  Created by Early Evening on 7/23/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Cuckoo
@testable import Tunic

import Foundation


 class MockDaemon: Daemon, Cuckoo.ProtocolMock {
    
     typealias MocksType = Daemon
    
     typealias Stubbing = __StubbingProxy_Daemon
     typealias Verification = __VerificationProxy_Daemon

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: Daemon?

     func enableDefaultImplementation(_ stub: Daemon) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func enable() -> Bool {
        
    return cuckoo_manager.call("enable() -> Bool",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.enable())
        
    }
    

	 struct __StubbingProxy_Daemon: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func enable() -> Cuckoo.ProtocolStubFunction<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDaemon.self, method: "enable() -> Bool", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_Daemon: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func enable() -> Cuckoo.__DoNotUse<(), Bool> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("enable() -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DaemonStub: Daemon {
    

    

    
     func enable() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
}

