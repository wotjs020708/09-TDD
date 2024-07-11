//
//  AlbertosTests.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/10/24.
//

import XCTest
@testable import Albertos


final class MenuGroupingTests: XCTestCase {
    func  testMenuWithManyCategoriesReturnsOneSectionPerCategoryInReverseAlphabeticalOrder() {
        // 메뉴아이템이 동일한 카테고리를 같는 경우 하나의 섹션으로 구분
        let menu:[MenuItem] = [
            .fixture(category: "pastas", name: "a pasta"),
            .fixture(category: "drinks", name: "a drink"),
            .fixture(category: "desserts", name: "a dessert"),
            .fixture(category: "pastas", name: "another pasta"),
        ].shuffled()
        
        let sections = groupMenuByCategory(menu)
        XCTAssertEqual(sections.count, 3)
        XCTAssertEqual(sections[safe: 0]?.category, "pastas")
        // XCTAssertEqual failed: // ("Optional("")") is not equal to ("Optional("pastas")")
        XCTAssertEqual(sections[safe: 1]?.category, "drinks")
        // XCTAssertEqual failed: // ("nil") is not equal to ("Optional("drinks")")
        XCTAssertEqual(sections[safe: 2]?.category, "desserts")
        // XCTAssertEqual failed: // ("nil") is not equal to ("Optional("desserts")")
    }
    
    func testMenuWithOneCategoryReturnOneSection() {
      }

    
    func testEmptyMenuReturnsEmptySections() {
        let menu = [MenuItem]()
        let sections = groupMenuByCategory(menu)
        XCTAssertTrue(sections.isEmpty)
    }
    
}
