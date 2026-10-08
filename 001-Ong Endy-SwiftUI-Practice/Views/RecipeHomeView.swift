//
//  RecipeHomeView.swift
//  001-Ong Endy-SwiftUI-Practice
//
//  Created by MacBook on 8/10/26.
//

import SwiftUI

struct RecipeHomeView: View {

    let recipes = SampleRecipes.all

    @State private var searchText = ""
    
    var filteredRecipes: [Recipe] {
        if searchText.isEmpty {
            return recipes
        }
        return recipes.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {

                    VStack(alignment: .leading, spacing: 4) {
                        Text(Date.now.formatted(.dateTime.weekday(.wide).month(.abbreviated).day()).uppercased())
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text("What's cooking?")
                            .font(.system(.largeTitle, design: .serif))
                            .fontWeight(.bold)
                    }

                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.secondary)
                        TextField("Search recipes", text: $searchText)
                    }
                    .padding(12)
                    .background(.gray.opacity(0.15), in: RoundedRectangle(cornerRadius: 12))

                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredRecipes) { recipe in
                            NavigationLink {
                                RecipeDetailView(recipe: recipe)
                            } label: {
                                RecipeCard(recipe: recipe)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .background(Color(red: 0.96, green: 0.94, blue: 0.91))
        }
    }
}

#Preview {
    RecipeHomeView()
}
