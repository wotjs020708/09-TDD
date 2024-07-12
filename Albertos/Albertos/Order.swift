//
//  Order.swift
//  Albertos
//
//  Created by 어재선 on 7/12/24.
//

import Foundation

struct Order {
    let items: [MenuItem]
    var total: Double {
        items.reduce(0) { previousReduceValue, currentMenuItem in
            previousReduceValue + currentMenuItem.price
        }
        
    }
}
