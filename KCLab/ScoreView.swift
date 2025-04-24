//
//  ScoreView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/24/25.
//

import SwiftUI

struct ScoreView: View {
   // let finalScore: Int
    var body: some View {
        ZStack {
            Color("scoreBg").ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Game Over!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                Text("Your Score: PLACEHOLDER")
                    .font(.title)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                Button(action: {
                }) {
                    Text("Back to Home")
                        .font(.title2)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                
                Button(action: {
                }) {
                    Text("Hungry?")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
            .padding()
        }
    }
}


#Preview {
    ScoreView()
}
