//
//  XCTestCase+FailableDeleteFeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Christophe Bugnon on 11/09/2019.
//  Copyright © 2019 Christophe Bugnon. All rights reserved.
//

import XCTest
import EssentialFeed

extension FailableDeleteFeedStoreSpecs where Self: XCTestCase {
    
    func assertThatDeleteDeliversErrorOnDeletionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        let deletionError = delete(from: sut)
        
        XCTAssertNotNil(deletionError, "Expected cache deletion to fail with an error", file: file, line: line)
    }
    
    func assertThatDeleteHasNoSideEffectsOnError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
        delete(from: sut)
        
        expect(sut, toRetrieve: .empty, file: file, line: line)
    }
}
