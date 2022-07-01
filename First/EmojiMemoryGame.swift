//
//  EmojiMemoryGame.swift
//  First Project
//
//  Created by Skinderev Alexander  on 28.06.2022.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🫐","🍈","🍒","🍑","🥭","🍍","🥥","🥝","🍅","🍆","🥑"]
        
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String> (numberOfPairsOfCards: 9) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
