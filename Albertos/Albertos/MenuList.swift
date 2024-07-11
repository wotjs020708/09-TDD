//
//  ContentView.swift
//  Albertos
//
//  Created by 어재선 on 7/10/24.
//

import SwiftUI

struct MenuList: View {
    let sections: [MenuSection]
    
    var body: some View {
        List{
            ForEach(sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
        .navigationTitle("Alberto's 🇮🇹")
    }
}

#Preview {
    NavigationStack {
        MenuList(sections: groupMenuByCategory(menu))        
    }
}
