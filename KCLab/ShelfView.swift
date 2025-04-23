//
//  ShelfView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct ShelfView: View {
    let imageNames = ["banana", "carrot", "grape", "egg", "lettuce", "tomato"]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(imageNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 300)
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
