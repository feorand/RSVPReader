//
//  Text.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import Foundation

enum TextError: Error {
    case NoMoreWords
}

class Text {

    private let words: [String]
    
    private var currentIndex = 0
    
    init(fromSource text:String) {
        words = text.components(separatedBy: " ")
    }
    
    var currentWord: String {
        get {
            return words[currentIndex]
        }
    }
    
    func moveNext() throws {
        guard currentIndex < words.count - 1 else {
            throw TextError.NoMoreWords
        }
        
        currentIndex += 1
    }
    
    func moveBackward(numberOfWords: Int) {
        currentIndex = max(0, currentIndex - numberOfWords)
    }
    
    func moveForward(numberOfWords: Int) {
        currentIndex = min(words.count, currentIndex + numberOfWords)
    }
    
}
