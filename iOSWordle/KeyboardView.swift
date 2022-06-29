//
//  KeyboardView.swift
//  iOSWordle
//
//  Created by Ignacio Bogarin on 24/06/22.
//

import SwiftUI

struct KeyboardView: View {
    @ObservedObject var viewModel: ViewModel
    let colums: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 20), spacing: 0), count: 10)
    var body: some View {
        LazyVGrid(columns: colums, spacing: 12) {
            ForEach(keyboardData, id:\.id){ model in
                Button {
                    viewModel.addNewLetter(letterModel: model)
                } label: {
                    Text(model.name)
                        .font(.body)
                }
                .frame(width: 34, height: 50)
                .foregroundColor(model.foregroundColor)
                .background(model.backgroundColor)
                .cornerRadius(8)

            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(viewModel: ViewModel())
    }
}
