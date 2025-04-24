//
//  StoreView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct StoreView: View {
    @State private var timeRemaining = 3
    @State private var timerRunning = false
    @Binding var gameOver: Bool

    var body: some View {
        ZStack {
            Color("shelfBg")
                .ignoresSafeArea()

            VStack {
                if !gameOver {
                    Text("Time Left: \(timeRemaining) sec")
                        .font(.title2)
                        .bold()
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .position(x: 200, y: 120)
                } else {
                    Text("Time's up!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .background(Color.blue.opacity(0.7))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .position(x: 200, y: 400)
                        .zIndex(2)
                }

                ShelfView()
                    .padding(EdgeInsets(top: 100, leading: 0, bottom: 10, trailing: 0))
            }
            .position(x: 200, y: 300)

            Image("basket")
                .resizable()
                .frame(width: 450, height: 200)
                .position(x: 200, y: 715)
        }
        .onAppear {
            startTimer()
        }
    }

    func startTimer() {
        timerRunning = true
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer.invalidate()
                timerRunning = false
                gameOver = true
            }
        }
    }
}


//#Preview {
//    StoreView()
//}
