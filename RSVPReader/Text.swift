//
//  Text.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import Foundation

class Text {
    
    let words: [String]
    
    var currentWord = 0
    
    init(fromSource text:String) {
        words = text.components(separatedBy: " ")
    }
    
}
