//
//  MenuRow.ViewModel.swift
//  Albertos
//
//  Created by 어재선 on 7/11/24.
//

extension MenuRow {
    struct ViewModel {
        let text: String
        
        init(item: MenuItem) {
            text = item.name
        }
    }
}
