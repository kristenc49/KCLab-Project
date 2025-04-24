//
//  StoreView.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        ZStack {
            Color("shelfBg")
                .ignoresSafeArea()
            VStack {
                ShelfView()
                    .padding(EdgeInsets(top: 100, leading: 0, bottom: 10, trailing: 0))
            }
            
            .position(x:200, y: 300)
            
            Image("basket")
                .resizable()
                .frame(width: 450, height: 200)
                .position(x: 200, y: 715)
        }
    }
}

#Preview {
    StoreView()
}
