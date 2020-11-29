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
        XCTAssertEqual(sut.trafficLightColor, TrafficColorValue.yellow, "TrafficLightSubject class: The _color should be .yellow after changed it.")
    }
    
    func test_TrafficLightSubject_WhenAddObserver_ThereAreObservers() {
        
        // Act
        let vehicleObserver = VehicleObserver(_Id: 1)
        sut.addObserver(_observer: vehicleObserver)
        
        // Assert
        XCTAssertTrue(sut.trafficObserver.count > 0, "TrafficLightSubject class: there are not had observers added.")
    }
    
    func test_TrafficLightSubject_WhenAddDuplicateObserver_ObserverNotAdded() {
        
        // Act
        let vehicleObserver = VehicleObserver(_Id: 1)
        sut.addObserver(_observer: vehicleObserver)
        sut.addObserver(_observer: vehicleObserver)
        
        // Assert
        XCTAssertTrue(sut.trafficObserver.count == 1, "TrafficLightSubject class: there are duplicate registers added.")
    }
    
    func test_TrafficLightSubject_WhenDeleteObserver_SuccessDeleted() {
        
        // Act
        let vehicleObserver = VehicleObserver(_Id: 1)
        sut.addObserver(_observer: vehicleObserver)
        sut.removeObserver(_observer: vehicleObserver)
        
        // Assert
        XCTAssertTrue(sut.trafficObserver.count == 0, "TrafficLightSubject class: the observer are not had removed.")
    }
    
    func test_TrafficLightSubject_WhenNotifyObserverCalled_SuccesCalled() {
        
        // Act
        let vehicleObserver = VehicleObserver(_Id: 1)
        sut.addObserver(_observer: vehicleObserver)
        sut.trafficLightColor = .green
        
        // Assert
        XCTAssertTrue(sut.trafficLightColor == .green, "TrafficLightSubject class: the observers was not called")
    }

}
