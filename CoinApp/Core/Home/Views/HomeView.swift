//
//  HomeView.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators:false){
                //top movers view
                TopMoversView()
                
                Divider()
                //all movers view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
