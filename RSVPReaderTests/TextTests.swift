//
//  TextTests.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import XCTest

@testable import RSVPReader

class TextTests: XCTestCase {
    
    var text: Text!
    
    override func setUp() {
        let sample = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt odio eget posuere egestas. Curabitur rhoncus nisl mi, vel efficitur sapien posuere pellentesque. Suspendisse potenti. Proin quis fringilla urna, vel ultricies eros. Etiam nisl felis, mollis sed blandit et, congue quis magna. Nam venenatis erat ut accumsan placerat. Cras quis augue purus. In id ex lobortis, eleifend arcu id, aliquet lacus. Nunc non ultrices ligula, quis tristique augue. Ut est massa, lacinia eget porttitor vel, pretium pellentesque massa. Nullam vestibulum dictum tortor et facilisis."
        
        text = Text(fromSource: sample)
    }
    
    func testWords() {
        XCTAssertEqual(text.words[0], "Lorem")
    }
    
    func testShowNextWord() {
        XCTAssertEqual(text.showNextWord(), "Lorem")
        XCTAssertEqual(text.showNextWord(), "ipsum")
    }
}
