//
//  CryptoCurrency.swift
//  CryptoCrazySUI
//
//  Created by yekta on 27.02.2024.
//

import Foundation

struct CryptoCurrency : Hashable, Identifiable, Decodable{
    let id = UUID()
    let currency:String
    let price:String
    
    private enum CodingKeys : String, CodingKey{
        case currency = "currency"
        case price = "price" 
    }
}
