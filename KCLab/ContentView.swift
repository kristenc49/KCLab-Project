//
//  ContentView.swift
//  KCLab App
//
//  Created by Student on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var showCutscene: Bool
    @Binding var cutsceneFinished: Bool
    @Binding var gameOver: Bool

    var body: some View {
        if gameOver {
            ScoreView()
        } else if cutsceneFinished {
            StoreView(gameOver: $gameOver)
        } else if showCutscene {
            CutsceneView(cutsceneFinished: $cutsceneFinished)
        } else {
            HomeScreenView(showCutscene: $showCutscene)
        }
    }
}

//#Preview {
//    ContentView()
//}
