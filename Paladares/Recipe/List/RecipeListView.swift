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
        

        LazyVGrid(columns: columns) {
            ForEach(viewModel.dataLoader.recipes, id: \.id) { recipe in
                Button (action: {
                    viewModel.selectedRecipe = recipe
                    coordinator.push(.recipeDetail)
                }) {
                    RecipeGridView(recipe: recipe)
                        .padding()
                   
                }
                Spacer()
            }
        }
        .padding()
        .frame(width: 890)
        .navigationTitle("Sabores do Mundo")
        
        Text("Brasileira:")
            .font(.system(.largeTitle))
            .padding(.leading, -560)
            .fontWeight(.bold)
            .kerning(0.4)
            .minimumScaleFactor(sizeCategory.customMinScaleFactorListView)
        
        LazyVGrid(columns: columns) {
            ForEach(viewModel.dataLoader.recipes, id: \.id) { recipe in
                Button (action: {
                    viewModel.selectedRecipe = recipe
                    coordinator.push(.recipeDetail)
                }) {
                    RecipeGridView(recipe: recipe)
                        .padding()
                   
                }
                Spacer()
            }
        }
        .frame(width: 890)
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
