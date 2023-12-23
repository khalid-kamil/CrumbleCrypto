//
//  CoinBadgeView.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 23/12/2023.
//

import SwiftUI

struct CoinBadgeView: View {

    let coin: Coin

    var body: some View {
        VStack(content: {
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        })
    }
}

#Preview("Coin Badge", traits: .sizeThatFitsLayout) {
    CoinBadgeView(coin: Preview.sample.coin)
}
