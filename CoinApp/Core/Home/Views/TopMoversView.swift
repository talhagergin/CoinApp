//
//  TopMoversView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel:HomeViewModel
    var body: some View {
        VStack(alignment:.leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing:16){
                    ForEach(viewModel.topMovingCoins){coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}
/*
#Preview {
    TopMoversView(viewModel: HomeViewModel())

}*/
