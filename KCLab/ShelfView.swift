//
//  ShelfView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct ShelfView: View {
    let groceryItems: [GroceryItem] = [
        GroceryItem(id: 1, name: "banana", imageName: "banana", value: 10),
        GroceryItem(id: 2, name: "carrot", imageName: "carrot", value: 10),
        GroceryItem(id: 3, name: "grape", imageName: "grape", value: 10),
        GroceryItem(id: 4, name: "egg", imageName: "egg", value: 10),
        GroceryItem(id: 5, name: "lettuce", imageName: "lettuce", value: 10),
        GroceryItem(id: 6, name: "tomato", imageName: "tomato", value: 10)
        ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(groceryItems) { item in
                    GroceryItemView(groceryItem: item)
                }
            }
            .frame(height: 150)
        }
        .background(.shelf)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ShelfView()
}
