//
//  ScoreView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/24/25.
//

import SwiftUI

struct ScoreView: View {
    @State private var showCutscene = false
    @State private var cutsceneFinished = false
    @State private var gameOver = false
   // let finalScore: Int
    var body: some View {
        ZStack {
            Image("scoreBg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 50) {
                Text("Game Over!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                    .position(x: 100, y: 200)
                
                Text("Your Score: PLACEHOLDER")
                    .font(.title)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .position(x: 140, y: 100)
                
                Button(action: {
                }) {
                    Text("Back to Home")
                        .font(.title2)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .position(x: 110, y: 20)
                
                Button(action: {
                    ContentView(showCutscene: $showCutscene, cutsceneFinished: $cutsceneFinished, gameOver: $gameOver)
                }) {
                    Text("Hungry?")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .position(x: 85, y: -80)
            }
            .padding()
        }
    }
}


#Preview {
    ScoreView()
}
