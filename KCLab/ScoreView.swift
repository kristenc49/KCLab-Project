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
                ZStack {
                    Image("scoreBg")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    Image("pinwheels")
                        .resizable()
                        .scaledToFit()
                        .offset(x: -60)
                }
                VStack(spacing: 30) {
                    Text("Final Score:")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                        .position(x: 100, y: 170)
                    Text("\(finalScore) points")
                        .font(.title)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                        .position(x:95, y: 80)
                    Text("You got: \n- Bread +20 \n- Cheese +20 \n- Spinach + 20")
                        .font(.title2)
                        .bold()
                        .frame(width: 200, height: 150)
                        .background(Color.black.opacity(0.7))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                        .position(x: 120, y: 70)
                    
                    Button(action: {
                       
                    }) {
                        Text("Back to Home")
                            .font(.title2)
                            .padding()
                            .frame(width: 200)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .position(x:250, y: 90)
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
                            .position(x: 250, y: 0)
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



