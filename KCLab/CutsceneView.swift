//
//  CutsceneView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/23/25.
//

import SwiftUI
struct CutsceneView: View {
    @State private var currentIndex = 0
    @Binding var cutsceneFinished: Bool
    @State private var showMessage = false
    @State private var showDirections = false
    @State private var countdown = 5
    let backgroundImages = ["screen1", "screen2", "screen4", "screen5", "screen6"]
    let requiredIngredients = ["Bread", "Cheese", "Broccoli"]
    var body: some View {
        ZStack {
            Image(backgroundImages[currentIndex])
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .animation(.easeInOut(duration: 1.0), value: currentIndex)
            if currentIndex == 4 {
                VStack {
                    VStack {
                        Text("Hurry! Memorize this list!")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)
                        Text("Countdown: \(countdown)")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)
                    }
                    .padding()
                    .position(x: UIScreen.main.bounds.width / 2, y: 120)
                    Spacer() 
                    VStack {
                        ForEach(requiredIngredients, id: \.self) { ingredient in
                            Text("- \(ingredient)")
                                .font(.title2)
                                .foregroundColor(.yellow)
                        }
                    }
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                }
            }
        }
        .onAppear {
            startCutscene(timeInterval: 3.0)
        }
    }
    func startCutscene(timeInterval: TimeInterval) {
        Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: false) { timer in
            if currentIndex < backgroundImages.count - 1 {
                currentIndex += 1
                var timeDur = 3.0
                if currentIndex == 0 { timeDur = 0.5 }
                if currentIndex == 1 { timeDur = 1.0 }
                if currentIndex == 4 {
                    timeDur = 10.0
                    showMessage = true
                    showDirections = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        showDirections = false
                        countdown = 5
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { countdownTimer in
                            if countdown > 0 {
                                countdown -= 1
                            } else {
                                countdownTimer.invalidate()
                            }
                        }
                    }
                }
                startCutscene(timeInterval: timeDur)
            } else {
                cutsceneFinished = true
            }
        }
    }
}


