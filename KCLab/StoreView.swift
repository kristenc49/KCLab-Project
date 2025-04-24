//
//  StoreView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//
import SwiftUI
struct StoreView: View {
    @State private var timeRemaining = 15
    @State private var playerScore = 0
    @State private var showScoreScreen = false
    
    var body: some View {
        if showScoreScreen {
            ScoreView(finalScore: playerScore) // Transition to ScoreView when time ends
        } else {
            ZStack {
                Color("shelfBg").ignoresSafeArea()
                VStack(spacing: 25) {
                    Text("Time Left: \(timeRemaining) sec")
                        .font(.title2)
                        .bold()
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .position(x: 200, y: 140)
                    ShelfView(playerScore: $playerScore) // Score is still tracked for final screen
                        .padding(EdgeInsets(top: 100, leading: 0, bottom: 10, trailing: 0))
                }
                .position(x: 200, y: 300)
                Image("basket")
                    .resizable()
                    .frame(width: 450, height: 200)
                    .position(x: 200, y: 715)
            }
            .onAppear { startTimer() }
        }
    }
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer.invalidate()
                showScoreScreen = true // Transitions to ScoreView when time runs out
            }
        }
    }
}
#Preview {
    StoreView()
}

