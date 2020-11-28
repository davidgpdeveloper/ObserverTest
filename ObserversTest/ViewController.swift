//
//  ViewController.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var trafficLightSubject: TrafficLightSubject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startActionsForTest()
    }

    func startActionsForTest() {
        
        trafficLightSubject = TrafficLightSubject()
        let vehicleObserver = VehicleObserver(_Id: 1)
        let vendorObserver = VendorObserver(_Id: 1)

        trafficLightSubject?.addObserver(_observer: vehicleObserver)
        trafficLightSubject?.addObserver(_observer: vendorObserver)

        trafficLightSubject?.trafficLightColor = .red
        trafficLightSubject?.trafficLightColor = .green

        trafficLightSubject?.removeObserver(_observer: vendorObserver)
        
        let vehicleObserver2 = VehicleObserver(_Id: 2)
        trafficLightSubject?.addObserver(_observer: vehicleObserver2)
        
        trafficLightSubject?.trafficLightColor = .yellow
        trafficLightSubject?.trafficLightColor = .red
    }

}

