//
//  MenuFetching.swift
//  Albertos
//
//  Created by 어재선 on 7/11/24.
//

import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
