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
    @Environment(\.sizeCategory) var sizeCategory
    
    let columns = [
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70)
    ]
    
    var body: some View {
        
        Text("Japonesa:")
            .font(.system(.largeTitle))
            .padding(.leading, -560)
            .fontWeight(.bold)
            .kerning(0.4)
            .minimumScaleFactor(sizeCategory.customMinScaleFactorListView)
        
        LazyVGrid(columns: columns, spacing: 72) {
            ForEach(viewModel.dataLoader.recipes, id: \.id) { recipe in
                Button (action: {
                    viewModel.selectedRecipe = recipe
                    coordinator.push(.recipeDetail)
                }) {
                    RecipeGridView(recipe: recipe)
                        .padding(.leading, 200)
                }
            }
        }
        .padding()
        .frame(width: 1169)
        .navigationTitle("Sabores do Mundo")
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorListView: CGFloat{
        switch self{
        case .extraSmall, .small, .medium:
            return 1.0
        case .large, .extraLarge, .extraExtraLarge:
            return 0.8
        default:
            return 0.6
        }
    }
}

#Preview {
    RecipeListView()
}
