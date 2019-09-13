//
//  ManagedFeedImage.swift
//  EssentialFeed
//
//  Created by Christophe Bugnon on 13/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import CoreData

@objc(ManagedFeedImage)
internal class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}

extension ManagedFeedImage {
    static func images(from localFeed: [LocalFeedImage], in context: NSManagedObjectContext) -> NSOrderedSet {
        return NSOrderedSet(array: localFeed.map { local in
            let managedFeed = ManagedFeedImage(context: context)
            managedFeed.id = local.id
            managedFeed.imageDescription = local.description
            managedFeed.location = local.location
            managedFeed.url = local.url
            return managedFeed
        })
    }
    
    var local: LocalFeedImage {
        return LocalFeedImage(id: id, description: imageDescription, location: location, url: url)
    }
}
