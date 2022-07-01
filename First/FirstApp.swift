//
//  FirstApp.swift
//  First
//  .
//  Created by Skinderev Alexander  on 25.06.2022.
//

import SwiftUI

@main
struct FirstApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
