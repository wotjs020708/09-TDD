//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/11/24.
//

import XCTest
import Combine
@testable import Albertos


final class MenuListViewModelTests: XCTestCase {
    
    var cancellables = Set<AnyCancellable>()
    
    func testWhenFetchingStartsPublishesEmptyMenu() {
        let viewModel = MenuList.ViewModel()
        XCTAssertTrue(viewModel.sections.isEmpty)
    }
    
    func testWhenSucceedsFetchingSectionsReceivedMenuAndGivenGroupingClosure() {
        var receivedMenu: [MenuItem]?
        let expectedSections: [MenuSection] = [.fixture()]
        
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
                receivedMenu = items
                return expectedSections
        }
        let viewModel = MenuList.ViewModel(
            menuFetching: MenuFetchingSample(),
            menuGrouping: spyClosure
            )
        
        let expectaion = XCTestExpectation(
                description: "받은 메뉴와 주어진 그룹화 클로저를 사용하여 생성된 섹션들을 발행합니다."
        )
        
        viewModel.$sections
            .dropFirst()
            .sink { value in
                XCTAssertEqual(receivedMenu, menu)
                XCTAssertEqual(value, expectedSections)
                expectaion.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [expectaion], timeout: 1)
    }
}

