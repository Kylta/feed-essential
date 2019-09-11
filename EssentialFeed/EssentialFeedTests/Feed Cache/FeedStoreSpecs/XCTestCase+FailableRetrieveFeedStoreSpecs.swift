//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Christophe Bugnon on 11/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest
import EssentialFeed

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
    
    func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
    }
    
    func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
    }
}
