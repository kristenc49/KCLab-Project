//
//  ShelfView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct ShelfView: View {
    @Binding var playerScore: Int
    let groceryItems: [GroceryItem] = [
        GroceryItem(id: 1, name: "banana", imageName: "banana", value: 10),
        GroceryItem(id: 2, name: "carrot", imageName: "carrot", value: 10),
        GroceryItem(id: 3, name: "grape", imageName: "grape", value: 10),
        GroceryItem(id: 4, name: "egg", imageName: "egg", value: 10),
        GroceryItem(id: 5, name: "lettuce", imageName: "lettuce", value: 10),
        GroceryItem(id: 6, name: "tomato", imageName: "tomato", value: 10),
        GroceryItem(id: 7, name: "bread", imageName: "bread", value: 10),
        GroceryItem(id: 8, name: "broccoli", imageName: "broccoli", value: 10),
        GroceryItem(id: 9, name: "onion", imageName: "onion", value: 10),
        GroceryItem(id: 10, name: "strawberry", imageName: "strawberry", value: 10),
        GroceryItem(id: 11, name: "blueberry", imageName: "blueberry", value: 10),
        GroceryItem(id: 12, name: "cheese", imageName: "cheese", value: 10),
        GroceryItem(id: 13, name: "milk", imageName: "milk", value: 10),
        GroceryItem(id: 14, name: "potato", imageName: "potato", value: 10),
        GroceryItem(id: 15, name: "avocado", imageName: "avocado", value: 10),
        GroceryItem(id: 16, name: "radish", imageName: "radish", value: 10),
        GroceryItem(id: 17, name: "spinach", imageName: "spinach", value: 10),
        GroceryItem(id: 18, name: "apple", imageName: "apple", value: 10)
    ]
    
    let numColumns = 3 // Increase if more rows are needed later
     var body: some View {
         ScrollView(.horizontal) {
             LazyHStack(spacing: 20) {
                 ForEach(0..<numColumns, id: \.self) { colIndex in
                     LazyVStack(spacing: 20) {
                         ForEach(groceryItems.indices.filter { $0 % numColumns == colIndex }, id: \.self) { index in
                             GroceryItemView(groceryItem: groceryItems[index], playerScore: $playerScore)
                         }
                     }
                 }
             }
             .frame(height: CGFloat(numColumns) * 150)
         }
         .background(Color("shelfBg"))
         .scrollIndicators(.hidden)
     }
 }
 #Preview {
     ShelfView(playerScore: .constant(0))
 }

