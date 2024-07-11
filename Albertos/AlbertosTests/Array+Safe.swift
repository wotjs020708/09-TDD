//
//  Array+Safe.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/11/24.
//
extension Array {
    subscript(safe index: Index) -> Element? {
        0 <= index && index < count ? self[index] : nil
    }
}

