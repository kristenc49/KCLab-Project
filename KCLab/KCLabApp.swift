//
//  KCLabApp.swift
//  KCLab
//
//  Created by Student on 4/9/25.
//

import SwiftUI

@main
struct KCLabApp: App {
    @State private var showCutscene = false
    @State private var cutsceneFinished = false
    @State private var gameOver = false
    
    var body: some Scene {
        WindowGroup {
            ContentView(showCutscene: $showCutscene, cutsceneFinished: $cutsceneFinished, gameOver: $gameOver)
        }
    }
}
