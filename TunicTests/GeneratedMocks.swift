// MARK: - Mocks generated from file: Tunic/Injections/Daemon.swift at 2019-08-11 19:29:08 +0000

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


// MARK: - Mocks generated from file: Tunic/Injections/ProcessDouble.swift at 2019-08-11 19:29:08 +0000

//
//  ProcessDouble.swift
//  Tunic
//
//  Created by Early Evening on 7/25/19.
//  Copyright © 2019 The Better Fish Orchestra. All rights reserved.
//

import Cuckoo
@testable import Tunic

import Foundation


 class MockProcessDouble: ProcessDouble, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProcessDouble
    
     typealias Stubbing = __StubbingProxy_ProcessDouble
     typealias Verification = __VerificationProxy_ProcessDouble

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProcessDouble?

     func enableDefaultImplementation(_ stub: ProcessDouble) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func run() throws {
        
    return try cuckoo_manager.callThrows("run() throws",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.run())
        
    }
    

	 struct __StubbingProxy_ProcessDouble: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func run() -> Cuckoo.ProtocolStubNoReturnThrowingFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockProcessDouble.self, method: "run() throws", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProcessDouble: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func run() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("run() throws", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProcessDoubleStub: ProcessDouble {
    

    

    
     func run() throws  {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockProcessFactory: ProcessFactory, Cuckoo.ProtocolMock {
    
     typealias MocksType = ProcessFactory
    
     typealias Stubbing = __StubbingProxy_ProcessFactory
     typealias Verification = __VerificationProxy_ProcessFactory

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: ProcessFactory?

     func enableDefaultImplementation(_ stub: ProcessFactory) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func makeProcess(cmd: String, args: [String]) -> ProcessDouble {
        
    return cuckoo_manager.call("makeProcess(cmd: String, args: [String]) -> ProcessDouble",
            parameters: (cmd, args),
            escapingParameters: (cmd, args),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.makeProcess(cmd: cmd, args: args))
        
    }
    

	 struct __StubbingProxy_ProcessFactory: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func makeProcess<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(cmd: M1, args: M2) -> Cuckoo.ProtocolStubFunction<(String, [String]), ProcessDouble> where M1.MatchedType == String, M2.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String])>] = [wrap(matchable: cmd) { $0.0 }, wrap(matchable: args) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockProcessFactory.self, method: "makeProcess(cmd: String, args: [String]) -> ProcessDouble", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_ProcessFactory: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func makeProcess<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(cmd: M1, args: M2) -> Cuckoo.__DoNotUse<(String, [String]), ProcessDouble> where M1.MatchedType == String, M2.MatchedType == [String] {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String])>] = [wrap(matchable: cmd) { $0.0 }, wrap(matchable: args) { $0.1 }]
	        return cuckoo_manager.verify("makeProcess(cmd: String, args: [String]) -> ProcessDouble", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ProcessFactoryStub: ProcessFactory {
    

    

    
     func makeProcess(cmd: String, args: [String]) -> ProcessDouble  {
        return DefaultValueRegistry.defaultValue(for: (ProcessDouble).self)
    }
    
}

