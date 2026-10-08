//
//  RecipeDetailView.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct RecipeDetailView: View {
    @Environment(\.dismiss) private var dismiss
    let recipe: Recipe
    @State private var servings: Int

    init(recipe: Recipe) {
        self.recipe = recipe
        _servings = State(initialValue: recipe.baseServings)
    }

    private var scale: Double {
        Double(servings) / Double(recipe.baseServings)
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                
                Color.gray.opacity(0.2)
                    .frame(height: 280)
                    .overlay {
                        Image(recipe.imageName)
                            .resizable()
                            .scaledToFill()
                    }
                    .clipped()

                VStack(alignment: .leading, spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text(recipe.category.uppercased())
                                .foregroundStyle(.orange)
                            Label("\(recipe.minutes) min", systemImage: "clock")
                                .foregroundStyle(.secondary)
                        }
                        .font(.caption)
                        .fontWeight(.semibold)

                        Text(recipe.name)
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)

                        Text(recipe.summary)
                            .foregroundStyle(.secondary)
                    }
                    
                    ServingControl(servings: $servings)
                    Text("Recipe serves \(recipe.baseServings) · amounts scaled ×\(scale.formatted())")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    HStack {
                        Text("Ingredients").font(.title3).fontWeight(.bold)
                        Spacer()
                        Text("\(recipe.ingredients.count) items")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    VStack(spacing: 0) {
                        ForEach(recipe.ingredients) { ingredient in
                            IngredientRow(ingredient: ingredient, scale: scale)
                            Divider()
                        }
                    }
                    .padding(.horizontal)
                    .background(.white, in: RoundedRectangle(cornerRadius: 16))

                    Text("Method").font(.title3).fontWeight(.bold)

                    VStack(spacing: 12) {
                        ForEach(Array(recipe.steps.enumerated()), id: \.element.id) { index, step in
                            MethodStepCard(number: index + 1, step: step)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 24)
                .padding(.bottom, 24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    Color(red: 0.96, green: 0.94, blue: 0.91),
                    in: UnevenRoundedRectangle(topLeadingRadius: 28, topTrailingRadius: 28)
                )
                .padding(.top, -28)
            }
        }
        .background(Color(red: 0.96, green: 0.94, blue: 0.91))
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
        .overlay(alignment: .topLeading) { 
            Button { dismiss() } label: {
                Image(systemName: "chevron.left")
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .frame(width: 36, height: 36)
                    .background(.regularMaterial, in: Circle())
            }
            .padding(.leading)
        }
    }
}

#Preview {
    NavigationStack {
        RecipeDetailView(recipe: SampleRecipes.all[3])
    }
}
