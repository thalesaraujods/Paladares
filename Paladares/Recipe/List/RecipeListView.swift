//
//  RecipeListView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var viewModel = RecipeViewModel.shared
    @EnvironmentObject private var coordinator: Coordinator
    
    let columns = [
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 72) {
            ForEach(recipes, id: \.id) { recipe in
                Button (action: {
                    viewModel.selectedRecipe = recipe
                    coordinator.push(.recipeDetail)
                }) {
                    RecipeGridView(recipe: recipe)
                }
                .disabled(recipe.blocked)
            }
        }
        .padding()
        .frame(width: 1169)
        .navigationTitle("Receitas")
    }
}

#Preview {
    RecipeListView()
}
