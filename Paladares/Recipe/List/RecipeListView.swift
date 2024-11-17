//
//  RecipeListView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

// TODO: Colocar as outras imagens 3D aqui (colocar no JSON)
// TODO: Ajeitar o ScrollView dessa view

struct RecipeListView: View {
    @ObservedObject var viewModel = RecipeViewModel.shared
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.sizeCategory) var sizeCategory
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 26) {
                
                // Exibe receitas do Japão
                Text("Japonesa:")
                    .font(Font.custom("SF Compact Rounded", size: 32, relativeTo: .largeTitle)
                        .weight(.bold))
                    .padding(.leading, 65)
                    .kerning(0.4)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorListView)
                
                LazyVGrid(columns: columns, spacing: 34) {
                    ForEach(viewModel.dataLoader.recipes.filter { $0.country == "Japan" }, id: \.id) { recipe in
                        Button(action: {
                            viewModel.selectedRecipe = recipe
                            coordinator.push(.recipeDetail)
                        }) {
                            RecipeGridView(recipe: recipe)
                                //.padding(.leading, 340)
                        }
                    }
                }
                .minimumScaleFactor(sizeCategory.customMinScaleFactorListView)
                
            }
            .padding()
            .multilineTextAlignment(.center)
            .navigationTitle("Sabores do Mundo")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// Extensão para customizar o fator de escala baseado na categoria de tamanho da fonte
extension ContentSizeCategory {
    var customMinScaleFactorListView: CGFloat {
        switch self {
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
