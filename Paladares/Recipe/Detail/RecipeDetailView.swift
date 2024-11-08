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
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {                
                Image(recipe.imagem)
                    .resizable()
                    .frame(width: 850, height: 400)
                    .cornerRadius(40)
                // ver se terão mais imagens da comida que será preparada
                
                HStack {
                    Button(action: {
                        coordinator.push(.recipeStep)
                    }) {
                        Label("Começar", systemImage: "play.fill")
                            .font(.system(.body))
                            .frame(width: 180, height: 75)
                            .background(Color.backBotao)
                            .foregroundColor(Color.palavraBotao)
                            .cornerRadius(160)
                            .padding(.top, 50)
                            .padding(.trailing, 440)
                    }
                    
                    Label(recipe.time, systemImage: "clock.fill")
                        .font(.system(.body))
                        .frame(width: 180, height: 75)
                        .background(Color.white)
                        .foregroundStyle(Color.corCinza)
                        .cornerRadius(160)
                        .shadow(radius: 5)
                        .padding(.top, 50)
                }
                
                RecipeDetailCuriousView(recipe: recipe)
                    .padding(.top, 80)
                
                RecipeDetailUtensilsView(recipe: recipe)
                    .padding(.top, 80)
                
                RecipeDetailIngredientsView(recipe: recipe)
                    .padding(.top, 80)
                
                RecipeDetailSugestionsView(recipe: recipe)
                    .padding(.top, 80)
            }
            .padding(.top, 120)
            //.navigationTitle(recipe.name)
        }
        .padding(.bottom, 10)
        .navigationTitle(recipe.name)
    }
}

#Preview {
    RecipeDetailView(recipe: recipes[0])
}
