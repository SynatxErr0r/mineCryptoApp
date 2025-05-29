//
//  CoinimageView.swift
//  mineCrypto
//
//  Created by 博滔张 on 2025/5/19.
//

import SwiftUI

struct CoinimageView: View {
    
    @StateObject var vm: CoinimageViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinimageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CoinimageView(coin: dev.coin)
        .padding()
}
