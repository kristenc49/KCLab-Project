//
//  HomeScreenView.swift
//  KCLab
//
//  Created by Kristen Chavez on 4/23/25.
//


import SwiftUI



struct HomeScreenView: View {
    @Binding var showCutscene: Bool
    
    var body: some View {
        ZStack {
            Image("homeScreen")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                
                Button(action: {
                    showCutscene = true
                }) {
                    Text("Start Game")
                        .font(.title)
                        .padding()
                        .frame(width: 200)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .shadow(radius: 5)
                        //.offset(x: 0, y: 100)
                }
                .padding(EdgeInsets(top: 200, leading: 0, bottom: 0, trailing: 0))
                
                Spacer()
            }
        }
    }
}


