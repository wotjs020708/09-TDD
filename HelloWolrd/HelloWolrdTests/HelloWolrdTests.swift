//
//  HelloWolrdTests.swift
//  HelloWolrdTests
//
//  Created by 어재선 on 7/10/24.
//

import XCTest

func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else {
        return true
    }
    guard year % 100 != 0 else {
        return false
    }
    return year % 4 == 0
}

final class HelloWolrdTests: XCTestCase {
    
    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssert(isLeap(2020))
    }
    
    func testEvenlyDivisibleBy100IsNotLeap() {
        XCTAssertFalse(isLeap(2100))
    }
    func testEvenlyDivisibleBy400IsLeap() {
        XCTAssertTrue(isLeap(2000))
    }
    
    func testEvenlyDivisibleBy4Or400IsNotLeap(){
        XCTAssertFalse(isLeap(2021))
    }
}
