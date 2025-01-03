//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ali Shafiei on 02/01/25.
//

import SwiftUI


class EmojiMemoryGame {
    private static let emojis = ["🍕", "👻", "❤️", "🚀", "💻", "🍌", "🐵", "🏀", "🍆", "🗿", "🌞", "🎨"]
    
    private var model = MemoryGame(numberOfParisOfCards: 4) { pairIndex in
        return emojis[pairIndex] //left here at chapter 4 :(
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
