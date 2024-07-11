//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/11/24.
//

import XCTest
@testable import Albertos

final class MenuListViewModelTests: XCTestCase {
    func testWhenFetchingStartsPublishesEmptyMenu() {
        let viewModel = MenuList.ViewModel()
        XCTAssertTrue(viewModel.sections.isEmpty)
    }
}
