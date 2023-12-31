//
//  MarketDataService.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 22/12/2023.
//

import Combine
import Foundation

class MarketDataService {

    @Published var marketData: MarketData? = nil
    var marketDataSubscription: AnyCancellable?

    init() {
        getData()
    }

    func getData() {

        guard let _ = Bundle.main.infoDictionary?["CG_API_KEY"] as? String, let url = URL(string: "https://api.coingecko.com/api/v3/global") else {
            return
        }

        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
