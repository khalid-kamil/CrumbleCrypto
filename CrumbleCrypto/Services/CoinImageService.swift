//
//  CoinImageService.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 21/12/2023.
//

import Combine
import SwiftUI

class CoinImageService {

    @Published var image: UIImage? = nil

    private var imageSubscription: AnyCancellable?

    init(urlString: String) {
        getCoinImage(urlString: urlString)
    }

    private func getCoinImage(urlString: String) {
        guard let url = URL(string: urlString) else { return }

        imageSubscription = NetworkingManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
}
