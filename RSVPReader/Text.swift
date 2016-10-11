//
//  Text.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import Foundation

class Text {
    
    private let words: [String]
    private let count: Int
    
    private var nextWord = 0
    
    init(fromSource text:String) {
        words = text.components(separatedBy: " ")
        count = words.count
    }
    
    func showNextWord() -> String? {
        guard nextWord < count else {
            return nil
        }
        
        let currentWord = nextWord
        nextWord += 1
        
        return words[currentWord]
    }
    
    func moveBackward(numberOfWords: Int) {
        nextWord = max(0, nextWord - numberOfWords-1)
    }
    
    func moveForward(numberOfWords: Int) {
        nextWord = min(count, numberOfWords + nextWord-1)
    }
    
}
