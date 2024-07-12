//
//  MenuFetcher.swift
//  Albertos
//
//  Created by 어재선 on 7/12/24.
//

import Foundation
import Combine

class MenuFetcher: MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], any Error> {
        return Future { $0(.success([]))}.eraseToAnyPublisher()
    }
}
