//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Steven Schwab on 12/26/22.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
    var selectedLocation: DDGLocation?
}
