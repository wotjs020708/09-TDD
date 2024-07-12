//
//  XCTestCase+JSONE.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/12/24.
//

import XCTest

extension XCTestCase {
    func dataFromJSONFileNamed(_ name: String) throws -> Data {
            let url = try XCTUnwrap(
                Bundle(for: type(of: self)).url(forResource: name, withExtension: "json")
            )
            return try Data(contentsOf: url)
        }
}
