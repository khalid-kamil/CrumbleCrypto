//
//  PortfolioView.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 23/12/2023.
//

import SwiftUI

struct PortfolioView: View {

    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: Coin? = nil
    @State private var quantityText: String = ""
    @State private var showCheckmark: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 0, content: {
                    SearchBarView(searchText: $vm.searchText)
                    coinBadgeList

                    if selectedCoin != nil {
                        portfolioInputSection
                    }
                })
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    ZStack {
                        Button(action: {
                            saveButtonPressed()
                        }, label: {
                            Text("Save".uppercased())
                        })
                        .opacity((selectedCoin != nil && selectedCoin?.currentHoldings != Double(quantityText)) ? 1 : 0)

                        Image(systemName: "checkmark")
                            .opacity(showCheckmark ? 1 : 0)
                    }
                    .font(.headline)
                    .foregroundStyle(Color.theme.accent)
                }
            })
        }
    }
}

#Preview("Edit Portfolio") {
    PortfolioView()
        .environmentObject(Preview.sample.homeVM)
}

extension PortfolioView {
    private var coinBadgeList: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHStack(spacing: 10, content: {
                ForEach(vm.allCoins) { coin in
                    CoinBadgeView(coin: coin)
                        .frame(width: 76)
                        .padding(4)
                        .onTapGesture {
                            withAnimation(.easeIn) {
                                selectedCoin = coin
                            }
                        }
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(selectedCoin?.id == coin.id ? Color.theme.green : Color.clear, lineWidth: 1)
                        }
                }
            })
            .padding(.vertical, 4)
            .padding(.leading)
        })
    }

    private var portfolioInputSection: some View {
        VStack(spacing: 20, content: {
            HStack {
                Text("Current price of \(selectedCoin?.symbol.uppercased() ?? ""):")
                Spacer()
                Text(selectedCoin?.currentPrice.asCurrencyWith6Decimals() ?? "")
            }
            Divider()
            HStack {
                Text("Amount in your portfolio:")
                Spacer()
                TextField("E.g.: 1.4", text: $quantityText)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.numberPad)
            }
            Divider()
            HStack {
                Text("Current value:")
                Spacer()
                Text(getCurrentValue().asCurrencyWith2Decimals())
            }
        })
        .animation(.none, value: selectedCoin?.id)
        .padding()
        .font(.headline)
    }

    private func getCurrentValue() -> Double {
        if let quantity = Double(quantityText) {
            return quantity * (selectedCoin?.currentPrice ?? 0)
        }
        return 0
    }

    private func saveButtonPressed() {

        guard let coin = selectedCoin else { return }

        // save to portfolio

        // show checkmark
        withAnimation(.easeIn) {
            showCheckmark = true
            removeSelectedCoin()
        }

        // hide keyboard
        UIApplication.shared.endEditing()

        // hide checkmark
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(.easeOut) {
                showCheckmark = false
            }
        }
    }

    private func removeSelectedCoin() {
        selectedCoin = nil
        vm.searchText = ""
    }
}
