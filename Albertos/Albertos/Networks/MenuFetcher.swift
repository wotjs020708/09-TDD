//
//  MenuFetcher.swift
//  Albertos
//
//  Created by 어재선 on 7/12/24.
//

import Foundation
import Combine

class MenuFetcher: MenuFetching {
    
    let networkFetching: NetworkFetching
    init(networkFetching: NetworkFetching) {
        self.networkFetching = networkFetching
    }
    
    func fetchMenu() -> AnyPublisher<[MenuItem], any Error> {
        let url = URL(string: "https://raw.githubusercontent.com/mokagio/tddinswift_fake_api/trunk/menu_response.json")!
        return networkFetching
            .load(URLRequest(url: url))
            .decode(type: [MenuItem].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
