//
//  VendorObserver.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import Foundation

class VendorObserver: ObserverProtocol {
    
    var Id: Int
    
    init(_Id : Int) {
        Id = Int("\(TypeObserverValue.vendor.rawValue)\(_Id)")!
    }
    
    func onTrafficLightColorChange(_color: TrafficColorValue) {
        
        if _color == .red {
            debugPrint("VENDOR \(Id): Start selling products")
        }
        
        if _color == .green {
            debugPrint("VENDOR \(Id): Move aside from the traffic")
        }
    }
    
}
