//
//  RecipeView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/24/25.
//
import SwiftUI
struct RecipeView: View {
    @Environment(\.presentationMode) var presentationMode // Allows navigation back
    var body: some View {
        ZStack {
            Image("homeScreen")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                VStack(spacing: 5) {
                    Text("Recipe:")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("Spinach Pinwheels")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .padding(20)
                .background(Color.black.opacity(0.8))
                .cornerRadius(12)
                .foregroundColor(.white)
                .offset(y: -60)
                VStack(alignment: .leading, spacing: 12) {
                    Text("📝 **Ingredients:**")
                        .font(.title2)
                        .bold()
                    Text("- Bread")
                    Text("- Cheese")
                    Text("- Broccoli")
                    Text("- Spinach")
                    Text("🍽️ **Steps:**")
                        .font(.title2)
                        .bold()
                    Text("1️⃣ Spread cheese evenly over bread slices.")
                    Text("2️⃣ Add chopped spinach and broccoli.")
                    Text("3️⃣ Roll the bread tightly and slice into pinwheels.")
                    Text("4️⃣ Bake at 350°F (175°C) for 10 minutes.")
                    Text("5️⃣ Enjoy your delicious pinwheels!")
                }
                .padding(20)
                .background(Color.black.opacity(0.8))
                .cornerRadius(12)
                .foregroundColor(.white)
                .offset(y: -40)
                Button(action: {
                    UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
                }) {
                    Text("Back to Home")
                        .font(.title2)
                        .padding()
                        .frame(width: 200)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
}
#Preview {
    RecipeView()
}

