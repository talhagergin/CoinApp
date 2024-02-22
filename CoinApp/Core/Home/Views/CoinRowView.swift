//
//  CoinRowView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            
            //market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
            //coin name info
            VStack(alignment: .leading, spacing: 4){
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.leading,4)
                Text("BTC")
                    .font(.caption)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
            Spacer()
            //coin price info
            VStack(alignment: .leading, spacing: 4){
                Text("$20,330.00")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.leading,4)
                Text("-5.60%")
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

#Preview {
    CoinRowView()
}
