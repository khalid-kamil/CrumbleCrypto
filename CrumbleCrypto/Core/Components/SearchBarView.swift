//
//  SearchBarView.swift
//  CrumbleCrypto
//
//  Created by Khalid Kamil on 21/12/2023.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var searchText: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent)

            TextField("Search by name or symbol...", text: $searchText)
                .foregroundStyle(Color.theme.accent)
                .autocorrectionDisabled(true)
                .overlay(alignment: .trailing) {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundStyle(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0 : 1)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                }
        }
        .font(.headline)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.15),
                        radius: 12, x: 0, y: 0)
        }
        .padding()
    }
}

#Preview("Search Bar", traits: .sizeThatFitsLayout) {
    SearchBarView(searchText: .constant(""))
}
