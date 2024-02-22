//
//  HomeViewModel.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var coins = [Coin]()
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        let urlString =
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h&locale=en"
        
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            do{
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                self.coins = coins
                print("DEBUG: COins \(coins)")
            }catch let error{
                print("DEBUG: Failed to decode with error\(error)")
            }
        }.resume()
    }
}