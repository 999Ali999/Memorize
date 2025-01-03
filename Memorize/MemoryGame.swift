//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Ali Shafiei on 02/01/25.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfParisOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<numberOfParisOfCards {
            let content = cardContentFactory(pairIndex)
            
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {  }
    
    struct Card {
        var isFaceUe = false
        var isMatched = false
        let content: CardContent
    }
}
