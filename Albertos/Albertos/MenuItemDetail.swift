//
//  MenuItemDetail.swift
//  Albertos
//
//  Created by 어재선 on 7/12/24.
//

import SwiftUI

struct MenuItemDetail: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.name)
                .fontWeight(.bold)
        }
        
        if let spicy = viewModel.spicy {
            Text(spicy)
                .font(Font.body.italic())
        }
        
        Text(viewModel.price)
        
        Button(viewModel.addOrRemoveFromOrderButtonText) {
            viewModel.addOrREmoveFromOrder()
        }
        
    }
}
