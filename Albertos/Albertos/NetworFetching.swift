//
//  NetworFetching.swift
//  Albertos
//
//  Created by 어재선 on 7/12/24.
//

import Foundation
import Combine

protocol NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError>
}
