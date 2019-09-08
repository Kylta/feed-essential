//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Christophe Bugnon on 08/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
