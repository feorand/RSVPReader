//
//  RSVPReaderTests.swift
//  RSVPReaderTests
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import XCTest
@testable import RSVPReader

class RSVPReaderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testTextWordsMethod() {
        let sample = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt odio eget posuere egestas. Curabitur rhoncus nisl mi, vel efficitur sapien posuere pellentesque. Suspendisse potenti. Proin quis fringilla urna, vel ultricies eros. Etiam nisl felis, mollis sed blandit et, congue quis magna. Nam venenatis erat ut accumsan placerat. Cras quis augue purus. In id ex lobortis, eleifend arcu id, aliquet lacus. Nunc non ultrices ligula, quis tristique augue. Ut est massa, lacinia eget porttitor vel, pretium pellentesque massa. Nullam vestibulum dictum tortor et facilisis."
        
        let text = Text(fromSource: sample)
        
        XCTAssertEqual(text.words[0], "Lorem")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
