//
//  GroceryItemView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct GroceryItemView: View {
    let groceryItem: GroceryItem
    @State private var itemOffset: CGSize = .zero
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height: 100)
                .opacity(0)
            Image(groceryItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
        }
        .offset(itemOffset) 
        .gesture(
            DragGesture()
                .onChanged { value in
                    itemOffset = value.translation
                }
                .onEnded { _ in
                    itemOffset = .zero
                }
        )
    }
}

#Preview {
    GroceryItemView(groceryItem: GroceryItem(id: 1, name: "banana", imageName: "banana", value: 10))
}
