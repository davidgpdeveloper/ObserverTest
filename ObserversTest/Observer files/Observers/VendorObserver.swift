//
//  VendorObserver.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import Foundation

class VendorObserver : ObserverProtocol {
    
    var Id: Int
    
    init(_Id : Int) {
        Id = _Id
    }
    
    func onTrafficLightColorChange(_color: String) {
        
        if(_color == TrafficColor.red) {
            debugPrint("Vendor: Start selling products")
        }
        
        if(_color == TrafficColor.green) {
            debugPrint("Vendor: Move aside from the traffic")
        }
    }
    
}
