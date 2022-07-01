//
//  FirstApp.swift
//  First
//  .
//  Created by Skinderev Alexander  on 25.06.2022.
//

import SwiftUI

@main
struct FirstApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
