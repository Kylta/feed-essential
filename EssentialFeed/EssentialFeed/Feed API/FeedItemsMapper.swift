//
//  FeedImagesMapper.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 26/08/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

internal class FeedImagesMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedImage]
    }
    
    private static var OK_200: Int { return 200 }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedImage] {
        guard response.statusCode == OK_200,
            let root = try? JSONDecoder().decode(Root.self, from: data) else {
                throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
