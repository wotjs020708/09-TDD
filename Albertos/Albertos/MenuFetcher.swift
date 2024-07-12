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
        let url = URL(string: "https://raw.githubusercontent.com/mokagio/tddinswift_fake_api/trunk/menu_response.json")!
        return URLSession.shared
            .dataTaskPublisher(for: URLRequest(url: url))
            .map { $0.data }
            .decode(type: [MenuItem].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
