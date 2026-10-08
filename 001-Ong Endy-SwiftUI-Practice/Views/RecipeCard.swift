//
//  RecipeCard.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct RecipeCard: View {
    let recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {

            Color.gray.opacity(0.2)
                .frame(height: 150)
                .overlay {
                    Image(recipe.imageName)
                        .resizable()
                        .scaledToFill()
                }
                .clipShape(RoundedRectangle(cornerRadius: 16))

            Text(recipe.name)
                .font(.subheadline)
                .fontWeight(.semibold)
                .lineLimit(1)

            Text("\(recipe.minutes) min · Serves \(recipe.baseServings)")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    RecipeCard(recipe: SampleRecipes.all[3])
        .padding()
}
