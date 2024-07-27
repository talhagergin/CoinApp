//
//  CoinRowView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI
import Kingfisher
struct CoinRowView: View {
    let coin:Coin
    var body: some View {
        HStack{
            
            //market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
            //coin name info
            VStack(alignment: .leading, spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.leading,4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
            Spacer()
            //coin price info
            VStack(alignment: .leading, spacing: 4){
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.leading,4)
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}
/*
#Preview {
    CoinRowView()
}
*/
