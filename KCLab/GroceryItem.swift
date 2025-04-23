//
//  GroceryItem.swift
//  KCLab
//
//  Created by Caitlin Lee on 4/23/25.
//

import Foundation

struct GroceryItem: Identifiable, Codable {
    var id: Int
    var name: String
    var imageName: String
    var value: Int
}
