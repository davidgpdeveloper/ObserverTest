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
    
    func onTrafficLightColorChange(_color: String) {
        
        if _color == TrafficColor.red {
            debugPrint("stop my vehicle")
        }
        
        if _color == TrafficColor.green {
            debugPrint("start my vehicle")
        }
        
        if _color == TrafficColor.yellow {
            debugPrint("slow down the speed of my vehicle")
        }
    }
}
