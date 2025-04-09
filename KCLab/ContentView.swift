//
//  ContentView.swift
//  KCLab App
//
//  Created by Student on 4/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        ZStack {
            Image("homeScreen")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
        
    }
}

#Preview {
    ContentView()
}
