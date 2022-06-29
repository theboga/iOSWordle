//
//  ContentView.swift
//  iOSWordle
//
//  Created by Ignacio Bogarin on 24/06/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            VStack(spacing: 30){
                GameView(viewModel: viewModel)
                KeyboardView(viewModel: viewModel)
            }
            if viewModel.bannerType != nil {
                BannerView(bannerType: viewModel.bannerType!)
            }
        }
        .onAppear{
            viewModel.chooseWord()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
