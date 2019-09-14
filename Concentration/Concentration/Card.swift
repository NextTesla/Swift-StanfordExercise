//
//  Card.swift
//  Concentration
//
//  Created by Jin-Mac on 2019/9/13.
//  Copyright © 2019 Yet. All rights reserved.
//

import Foundation

// what the difference between class and struct ?
// 1.struct has no inheritance.
// 2.structs are value types and classes are references types.
struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifireFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        Card.identifireFactory += 1
        return Card.identifireFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
