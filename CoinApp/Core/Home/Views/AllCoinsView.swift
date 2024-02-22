//
//  AllCoinsView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(0..<50, id: \.self){_ in
                    CoinRowView()}
                }
            }
        }
        
    }
}

#Preview {
    AllCoinsView()
}
