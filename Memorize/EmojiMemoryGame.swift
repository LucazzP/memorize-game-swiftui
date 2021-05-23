//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Lucas Polazzo on 23/05/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private(set) var model: MemoryGame<String> = createMemoryGame()
    
    static private func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷", "💀", "🪦"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<emojis.count)) { pairIndex in emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
