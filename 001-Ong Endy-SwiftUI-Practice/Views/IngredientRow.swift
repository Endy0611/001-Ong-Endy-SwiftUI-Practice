//
//  IngredientRow.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct IngredientRow: View {
    let ingredient: Ingredient
    let scale: Double             

    var body: some View {
        HStack {
        
            Text("\((ingredient.amount * scale).cleanAmount) \(ingredient.unit)")
                .fontWeight(.semibold)
                .foregroundStyle(.orange)
                .frame(width: 80, alignment: .leading)

            Text(ingredient.name)
            Spacer()
        }
        .padding(.vertical, 10)
    }
}

extension Double {
    var cleanAmount: String {
        ((self * 10).rounded() / 10).formatted()
    }
}

#Preview {
    IngredientRow(ingredient: SampleRecipes.all[3].ingredients[2], scale: 2)
        .padding()
}
