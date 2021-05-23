//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Lucas Polazzo on 5/22/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        let game = EmojiMemoryGame()
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
