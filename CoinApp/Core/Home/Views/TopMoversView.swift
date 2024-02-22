//
//  TopMoversView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing:16){
                    ForEach(0..<5, id: \.self ){_ in
                        TopMoversItemView()
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMoversView()
}
