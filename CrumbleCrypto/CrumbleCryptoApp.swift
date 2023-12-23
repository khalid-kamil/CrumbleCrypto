//
//  CrumbleCryptoApp.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 20/12/2023.
//

import SwiftUI

@main
struct CrumbleCryptoApp: App {

    @StateObject private var vm = HomeViewModel()

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
