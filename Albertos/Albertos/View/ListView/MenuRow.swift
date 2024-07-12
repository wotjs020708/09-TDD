//
//  MenuRow.swift
//  Albertos
//
//  Created by 어재선 on 7/11/24.
//

import SwiftUI

struct MenuRow: View {
    let viewModel: ViewModel
    var body: some View {
        Text(viewModel.text)
    }
}

