//
//  CrumbleCryptoApp.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 20/12/2023.
//

import SwiftUI

@main
struct CrumbleCryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
