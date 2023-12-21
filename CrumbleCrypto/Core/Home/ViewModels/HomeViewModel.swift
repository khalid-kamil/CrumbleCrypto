//
//  HomeViewModel.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 21/12/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []

    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(PreviewContent.sample.coin)
            self.portfolioCoins.append(PreviewContent.sample.coin)
        }
    }
}
