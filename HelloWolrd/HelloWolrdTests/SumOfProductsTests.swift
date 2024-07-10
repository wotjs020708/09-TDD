//
//  SumOfProductsTests.swift
//  HelloWolrdTests
//
//  Created by 어재선 on 7/10/24.
//

import XCTest

struct Product {
    let category: String
    let price: Double
}

func sumOf(_ products: [Product], withCategory category: String) -> Double {
    return products
        .filter { $0.category == category }
        .reduce(0.0) { $0 + $1.price}
}


final class SumOfProductsTests: XCTestCase {
    func testSumOfEmptyArrayIsZero() {
        let category = "books"
        let products = [Product]()
        let sum = sumOf(products, withCategory: category)
        XCTAssertEqual(sum, 0)
        
    }
    func testSumOfOneItemIsItemPrics() {
        let category = "books"
        let products = [Product(category: category, price: 3)]
        let sum = sumOf(products, withCategory: category)
        XCTAssertEqual(sum, 3)
    }
    func testSumisSumOfItemsPricesForeGivenCategory() {
        let category = "books"
        let products = [
            Product(category: category, price: 3),
            Product(category: "movies", price: 2),
            Product(category: category, price: 1)
        ]
        let sum = sumOf(products, withCategory: category)
        XCTAssertEqual(sum, 4)
        
    }
    
}
