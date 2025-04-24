//
//  ScoreView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/24/25.
//


import SwiftUI
struct ScoreView: View {
    let finalScore: Int
    @State private var showRecipeScreen = false
    var body: some View {
        if showRecipeScreen {
            RecipeView()
        } else {
            ZStack {
                Color("shelfColor").ignoresSafeArea()
                VStack(spacing: 30) {
                    Text("Final Score:")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.green)
                    Text("\(finalScore) points")
                        .font(.title)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                    Button(action: {
                       
                    }) {
                        Text("Back to Home")
                            .font(.title2)
                            .padding()
                            .frame(width: 200)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    Button(action: {
                        showRecipeScreen = true // Transition to recipe screen
                    }) {
                        Text("Hungry?")
                            .font(.title2)
                            .padding()
                            .frame(width: 200)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                }
                .padding()
            }
        }
    }
}
#Preview {
    ScoreView(finalScore: 75) // Example preview
}



