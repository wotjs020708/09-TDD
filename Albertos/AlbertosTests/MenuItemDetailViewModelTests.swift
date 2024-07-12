//
//  MenuItemDetailViewModelTests.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/12/24.
//

import XCTest

@testable import Albertos

final class MenuItemDetailViewModelTests: XCTestCase {

    func testWhenItemIsInOrderButtonSayRemove() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        orderController.addToOrder(item: item)
        
        // Act
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Assert
        let text = viewModel.addOrRemoveFromOrderButtonText
        XCTAssertEqual(text, "Remove from order")
        
    }
    func testWhenItemIsNotInOrderButtonSaysAdd() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        // Act
        let text = viewModel.addOrRemoveFromOrderButtonText
        
        // Assert
        XCTAssertEqual(text, "Add to order")
        
    }
    func testWhenItemIsInOrderButtonActionRemovesIt() {
        // Arrange
        let item: MenuItem = .fixture()
        let ordercontroller = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: ordercontroller)
        
        ordercontroller.addToOrder(item: item)
        
        //Act
        viewModel.addOrRemoveFromOrder() // 삭제를 해야함
        
        // Assert
        XCTAssertFalse(ordercontroller.order.items.contains { $0 == item })
        
    }
    func testWhenItemIsNotInOrderButtonActionAddsIt() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)
        
        //Act
        viewModel.addOrRemoveFromOrder() // order에 item을 추가함
        
        XCTAssertTrue(orderController.order.items.contains { $0 == item})
        
    }

}
