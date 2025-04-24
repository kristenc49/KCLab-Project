//
//  GroceryItemView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI
struct GroceryItemView: View {
    let groceryItem: GroceryItem
    @Binding var playerScore: Int // Track score updates
    @State private var itemOffset: CGSize = .zero
    @State private var hasMoved: Bool = false
    private let dropThreshold: CGFloat = 200 
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 130, height: 130)
                .opacity(0)
            
            Image(groceryItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
        }
        .offset(itemOffset)
        .gesture(
            DragGesture()
                .onChanged { value in
                    itemOffset = value.translation
                }
                .onEnded { value in
                    if value.location.y >= dropThreshold {
                        hasMoved = true
                        withAnimation(.spring()) {
                            itemOffset = CGSize(width: 700, height: 700) // Moves item out of view
                        }
                        playerScore += groceryItem.value // Increase score when item is dropped correctly
                    } else {
                        withAnimation(.spring()) {
                            itemOffset = .zero // Resets position if not dropped in basket
                        }
                    }
                }
        )
    }
}
#Preview {
}



