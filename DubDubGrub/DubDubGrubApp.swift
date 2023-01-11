//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Steven Schwab on 12/20/22.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
