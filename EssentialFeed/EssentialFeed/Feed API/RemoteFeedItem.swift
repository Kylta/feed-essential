//
//  RemoteFeedImage.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 04/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

struct RemoteFeedImage: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
