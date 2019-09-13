//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 26/08/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
