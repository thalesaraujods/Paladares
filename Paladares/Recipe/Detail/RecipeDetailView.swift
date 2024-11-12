//
//  RecipeDetailView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {                
                Image(recipe.image)
                    .resizable()
                    .frame(width: 850, height: 400)
                    .cornerRadius(40)
                // ver se terão mais imagens da comida que será preparada
                
                HStack {
                    Button(action: {
                        coordinator.push(.recipePreparation)
                    }) {
                        Label("Começar", systemImage: "play.fill")
                            .padding()
                            .font(.system(.body))
                            .imageScale(.small)
                            .background(Color.backBotao)
                            .foregroundColor(Color.palavraBotao)
                            .cornerRadius(160)
                        
                    }
                    
                    Spacer()
                    //consertar o alinhamento dos "botoes"
                    
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                    
                    Label(recipe.time, systemImage: "clock.fill")
                        .padding()
                        .font(.system(.body))
                        .background(Color.white)
                        .foregroundStyle(Color.corCinza)
                        .cornerRadius(160)
                        .shadow(radius: 5)
                }
                .padding(.top, 50)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                
                
                RecipeDetailUtensilsView(recipe: recipe)
                    .padding(.top, 80)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                
                RecipeDetailIngredientsView(recipe: recipe)
                    .padding(.top, 80)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                
                RecipeDetailSugestionsView(recipe: recipe)
                    .padding(.top, 80)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            }
            .frame(width: 940)
            .padding(.top, 120)
            //.navigationTitle(recipe.name)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .padding(.bottom, 10)
        .navigationTitle(recipe.name)
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorDetailView: CGFloat{
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
    RecipeDetailView(recipe: mockRecipe)
}
