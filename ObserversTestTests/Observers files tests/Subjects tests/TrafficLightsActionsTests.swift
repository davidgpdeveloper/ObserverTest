//
//  TrafficLightsActionsTests.swift
//  ObserversTestTests
//
//  Created by David SG on 29/11/20.
//

import XCTest
@testable import ObserversTest

class TrafficLightsActionsTests: XCTestCase {

    var sut: TrafficLightsActions?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = TrafficLightsActions()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        sut = nil
    }
    
    func test_TrafficLightsActions_WhenCreateTrafficLightSubjectObject_IsNotNill() {
        
        // Act
        sut?.startTrafficLightsActions()
        
        XCTAssertNotNil(sut?.trafficLightSubject, "TrafficLightSubject class: The object trafficLightSubject is nill.")
    }


}
