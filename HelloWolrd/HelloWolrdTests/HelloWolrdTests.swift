//
//  HelloWolrdTests.swift
//  HelloWolrdTests
//
//  Created by 어재선 on 7/10/24.
//

import XCTest

func isLeap(_ year: Int) -> Bool {
    return false
}

final class HelloWolrdTests: XCTestCase {
    
    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssert(isLeap(2020))
    }
    
    func testEvenlyDivisibleBy100IsNotLeap() {
        
    }
    func testEvenlyDivisibleBy400IsLeap() {
        
    }
    
    func testEvenlyDivisibleBy4Or400IsNotLeap(){
        
    }
}
