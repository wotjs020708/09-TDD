//
//  OrderTest.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/12/24.
//

import XCTest

@testable import Albertos

final class OrderTest: XCTestCase {

    func testTotalSumItemPrices() {
        let order = Order(items: [
            .fixture(price: 1.0),
            .fixture(price: 2.0),
            .fixture(price: 3.5),
        ])

        XCTAssertEqual(order.total, 6.5)
    }
}
