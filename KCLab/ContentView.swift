//
//  ContentView.swift
//  KCLab App
//
//  Created by Student on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showCutscene = false
    @State private var cutsceneFinished = false

    var body: some View {
        if cutsceneFinished {
            StoreView()
        } else if showCutscene {
            CutsceneView(cutsceneFinished: $cutsceneFinished)
        } else {
            HomeScreenView(showCutscene: $showCutscene)
        }
    }
}

#Preview {
    ContentView()
}
