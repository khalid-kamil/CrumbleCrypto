//
//  StatisticView.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 22/12/2023.
//

import SwiftUI

struct StatisticView: View {

    let stat: Statistic

    var body: some View {
        VStack(alignment: .leading, spacing: 4, content: {
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
            HStack {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0 : 1)
        })
    }
}

#Preview("Statistic", traits: .sizeThatFitsLayout) {
    HStack {
        StatisticView(stat: Preview.sample.stat1)
        StatisticView(stat: Preview.sample.stat2)
        StatisticView(stat: Preview.sample.stat3)
    }
}
