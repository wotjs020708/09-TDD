//
//  NetWorkFetchingStub.swift
//  AlbertosTests
//
//  Created by 어재선 on 7/12/24.
//

import Foundation
import Combine


@testable import Albertos

class NetWorkFetchingStub: NetworkFetching {
    
    private let result: Result <Data, URLError>
    
    init(result: Result<Data, URLError>) {
        self.result = result
    }
    
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return result.publisher
            .delay(for: 0.1, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
