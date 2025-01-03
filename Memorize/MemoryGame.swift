//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Ali Shafiei on 02/01/25.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {  }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
