//
//  VehicleObserver.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import Foundation

class VehicleObserver: ObserverProtocol {
    
    var Id: Int
    
    init(_Id : Int) {
        Id = _Id
    }
    
    func onTrafficLightColorChange(_color: TrafficColorValue) {
        
        if _color == .red {
            debugPrint("VEHICLE \(Id): stop my vehicle")
        }
        
        if _color == .green {
            debugPrint("VEHICLE \(Id): start my vehicle")
        }
        
        if _color == .yellow {
            debugPrint("VEHICLE \(Id):  down the speed of my vehicle")
        }
    }
}
