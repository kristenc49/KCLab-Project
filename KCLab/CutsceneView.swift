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
    //@State private var cutsceneFinished = false
    @State private var showMessage = false
    @State private var showDirections = false
    @State private var countdown = 2
    let backgroundImages = ["screen1", "screen2", "screen4", "screen5", "screen6"]

    var body: some View {
        ZStack (alignment: .top){
            Image(backgroundImages[currentIndex])
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .animation(.easeInOut(duration: 1.0), value: currentIndex)
            
            if showMessage {
                Spacer(minLength: 400)
                VStack{
                    if showDirections {
                        Text("Hurry! Memorize this list!")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)
                    } else {
                        Text("Countdown: \(countdown)")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(10)

                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
        
            }
        }
        .onAppear {
            startCutscene(timeInterval: 3.0)
        }
    }

    func startCutscene(timeInterval: TimeInterval) {
        // edited method to make it so some screens appear for longer than others to help users read messages
        Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: false) { timer in
            if currentIndex < backgroundImages.count - 1 {
                currentIndex += 1
                
                var timeDur = 3.0
                if currentIndex == 2 {
                    timeDur = 3.0
                }
                if currentIndex == 4 {
                    timeDur = 10.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showMessage = true
                        showDirections = true
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        showDirections = false
                        countdown = 5
                        
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { countdownTimer in
                            if countdown > 0 {
                                countdown -= 1
                            } else {
                                showMessage = false
                                countdownTimer.invalidate()
                            }
                        }
                    }
                }
                
                startCutscene(timeInterval: timeDur)
            } else {
                // timer.invalidate()
                cutsceneFinished = true 
            }
        }
    }
}
