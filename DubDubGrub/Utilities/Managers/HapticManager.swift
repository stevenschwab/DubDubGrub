//
//  HapticManager.swift
//  DubDubGrub
//
//  Created by Steven Schwab on 1/4/23.
//

import UIKit

struct HapticManager {
    
    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
