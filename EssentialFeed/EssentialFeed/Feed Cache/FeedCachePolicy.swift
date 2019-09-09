//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 09/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

internal final class FeedCachePolicy {
    private init() {}
    
    private static let calendar = Calendar(identifier: .gregorian)
    
    private static var maxAgeCacheInDays: Int {
        return 7
    }
    
    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxAgeCacheInDays, to: timestamp) else {
            return false
        }
        
        return date < maxCacheAge
    }
}
