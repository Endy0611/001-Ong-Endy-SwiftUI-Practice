//
//  Recipe.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let minutes: Int
    let baseServings: Int
    let summary: String
    let imageName: String
    let ingredients: [Ingredient]
    let steps: [MethodStep]
}
