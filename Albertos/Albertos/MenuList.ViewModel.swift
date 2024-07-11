//
//  MenuList.ViewModel.swift
//  Albertos
//
//  Created by 어재선 on 7/11/24.
//

extension MenuList {
    struct ViewModel {
        let sections: [MenuSection]
        
        init(menu: [MenuItem], menuGrouping: @escaping ([MenuItem]) -> [MenuSection]) {
            self.sections = menuGrouping(menu)
        }
    }
    
}
