//
//  ContentView.swift
//  KCLab App
//
//  Created by Student on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showCutscene = false

    var body: some View {
        if showCutscene {
          CutsceneView()
        } else {
            HomeScreenView(showCutscene: $showCutscene)
        }
    }
}


#Preview {
    ContentView()
}
