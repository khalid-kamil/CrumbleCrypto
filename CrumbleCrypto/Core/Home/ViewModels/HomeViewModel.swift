//
//  HomeViewModel.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 21/12/2023.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []

    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()

    init() {
        addSubscribers()
    }

    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
