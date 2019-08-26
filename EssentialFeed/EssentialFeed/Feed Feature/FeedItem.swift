//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 26/08/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

struct FeedItem {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}