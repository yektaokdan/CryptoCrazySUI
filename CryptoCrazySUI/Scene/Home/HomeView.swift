//
//  ContentView.swift
//  CryptoCrazySUI
//
//  Created by yekta on 27.02.2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel : CryptoListViewModel
    init() {
        self.viewModel = CryptoListViewModel()
    }
    var body: some View {
        NavigationView{
            List(viewModel.cryptoList, id:\.id){crypto in
                VStack {
                    Text(crypto.currency)
                    Text(crypto.price)
                }
                
            }.navigationTitle("Crypto Crazy")
        }.task {
            await viewModel.downloadCryptosAsync(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
        }
        
        
        /*
        .onAppear{
            /*
            viewModel.downloadCryptos(url: URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!)
             */
            
        }
         */
    }
}

#Preview {
    HomeView()
}
