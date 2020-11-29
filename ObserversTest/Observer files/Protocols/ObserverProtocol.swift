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
