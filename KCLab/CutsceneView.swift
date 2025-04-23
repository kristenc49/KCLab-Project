//
//  CutsceneView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/23/25.
//

import SwiftUI

struct CutsceneView: View {
    @State private var currentIndex = 0
    let backgroundImages = ["screen1", "screen2", "screen3", "screen4", "screen5"]

    var body: some View {
        ZStack {
            Image(backgroundImages[currentIndex]) // current bkg
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            startCutscene()
        }
    }

    func startCutscene() {
        // cycles thru images every 2 seconds
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
            if currentIndex < backgroundImages.count - 1 {
                currentIndex += 1
            } else {
                timer.invalidate()
                // move to gameplay after
            }
        }
    }
}
