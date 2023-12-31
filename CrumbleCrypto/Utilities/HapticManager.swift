//
//  HapticManager.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 23/12/2023.
//

import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()

    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
