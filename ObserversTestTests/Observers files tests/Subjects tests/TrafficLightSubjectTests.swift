//
//  TrafficLightSubjectTests.swift
//  ObserversTestTests
//
//  Created by David SG on 28/11/20.
//

import XCTest
@testable import ObserversTest

class TrafficLightSubjectTests: XCTestCase {

    var sut: TrafficLightSubject!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = TrafficLightSubject()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        sut = nil
    }

    func test_TrafficLightSubject_WhenInitValueColor_IsRed() {
        // Assert
        XCTAssertEqual(sut._color, TrafficColorValue.red, "TrafficLightSubjec class: The init _color should be .red")
    }
    
    func test_TrafficLightSubject_WhenInitTrafficLightColorValue_IsRed() {
        // Assert
        XCTAssertEqual(sut.trafficLightColor, TrafficColorValue.red, "TrafficLightSubjec class: The init _color should be .red")
    }
    
    func test_TrafficLightSubject_WhenInitTrafficLightColorSetValue_IsYellow() {
        
        // Act
        sut.trafficLightColor = .yellow
        
        // Assert
        XCTAssertEqual(sut.trafficLightColor, TrafficColorValue.yellow, "TrafficLightSubjec class: The init _color should be .red")
    }

}
