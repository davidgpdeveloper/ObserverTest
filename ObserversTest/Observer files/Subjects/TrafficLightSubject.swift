//
//  TrafficLightSubject.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import Foundation

class TrafficLightSubject {

    // MARK: VARIABLES
    var _color = TrafficColorValue.red
    // The array wich contains the list of all the observers
    var trafficObserver = [ObserverProtocol]()
    
    var trafficLightColor: TrafficColorValue {
        get {
            return _color
        }
        set {
            _color = newValue
            // When a new value is added call the notifyObserver function
            notifyObserver()
        }
    }
    
    // MARK: FUNCTIONS
    func addObserver(_observer: ObserverProtocol) {
        
        // Validation to check if the observer was already added to the array to avoid duplicates
        guard trafficObserver.contains(where: {$0.Id == _observer.Id}) == false else {
            return
        }
        trafficObserver.append(_observer)
    }
    
    func removeObserver(_observer: ObserverProtocol) {
        trafficObserver = trafficObserver.filter({$0.Id != _observer.Id})
    }
    
    private func notifyObserver() {
        // Notify all the observers that the state has changed
        trafficObserver.forEach({$0.onTrafficLightColorChange(_color: _color)})
    }
    
    // MARK: DEINIT
    deinit {
        trafficObserver.removeAll()
    }
}
