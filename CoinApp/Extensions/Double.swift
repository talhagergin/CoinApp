//
//  Double.swift
//  CoinApp
//
//  Created by Talha Gergin on 22.02.2024.
//

import Foundation

extension Double{
    private var currencyFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 3
        formatter.currencySymbol = "$"
        
        return formatter
    }
    private var numberFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 3
        formatter.currencySymbol = "$"
        
        return formatter
    }
    func toCurrency() -> String{
        return currencyFormatter.string(for:self) ?? "$0.00"
    }
    func toPercentString() -> String{
        guard let numberAsString = numberFormatter.string(for: self) else {return "" }
        return numberAsString + "%"
    }
}
