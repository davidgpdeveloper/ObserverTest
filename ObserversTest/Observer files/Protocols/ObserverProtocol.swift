//
//  ObserverProtocol.swift
//  ObserversTest
//
//  Created by David SG on 28/11/20.
//

import Foundation

protocol ObserverProtocol {
    var Id: Int {get set}
    func onTrafficLightColorChange(_color: TrafficColorValue)
}

protocol Observer {
    var id : Int { get } // property to get an id
    func update<T>(with newValue: T)
}

protocol Observable {
    associatedtype T
    var value : T { get set }
    var observers : [Observer] { get set }
    
    func addObserver(observer: Observer)
    func removeObserver(observer: Observer)
    func notifyAllObservers<T>(with newValue: T)
}
