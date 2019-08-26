//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Christophe Bugnon on 26/08/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest

protocol HTTPClient {}

class RemoteFeedLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        let _ = RemoteFeedLoader(client: client)
        
        
        XCTAssertNil(client.requestedURL)
    }
    
    private class HTTPClientSpy: HTTPClient {
        var requestedURL: URL?
    }
}
