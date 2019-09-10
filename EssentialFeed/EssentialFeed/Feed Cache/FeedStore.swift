//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 04/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

public enum RetrieveCacheFeedResult {
    case found(feed: [LocalFeedImage], timestamp: Date)
    case empty
    case failure(Error)
}

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    typealias RetrieveCompletion = (RetrieveCacheFeedResult) -> Void
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func retrieve(completion: @escaping RetrieveCompletion)
}
