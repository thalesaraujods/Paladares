//
//  RecipeDetailView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI


//TODO: Ajeitar o espaçamento das palavras
//TODO: Definir um frame concreto para os ingredientes e etc
//TODO: Ver os ingredientes grifados que não tem uma quantidade específica
//TODO: Ajustar o tamanho conforme a receita feita (no simulador tá ficando direitinho)


struct RecipeDetailView: View {

    let recipe: Recipe
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.sizeCategory) var sizeCategory

    var body: some View {

        ZStack{
            VStack {
            ScrollView(showsIndicators: false) {

                HStack(spacing: 400){
                    Text(recipe.name)
                        .font(.system(.largeTitle))
                        .padding()
                        .padding(.vertical, 30)
                        .padding(.leading, -440)
                        .fontWeight(.bold)
                        .kerning(0.4)
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorListView)
                }
                
                ZStack{
                    Image(recipe.image)
                        .resizable()
                        .frame(width: 890, height: 400)
                        .cornerRadius(40)
                    
                    HStack (spacing: 20){
                        Label(recipe.people, systemImage: "person.2.fill")
                            .font(.system(.title2))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.3, green: 0.69, blue: 0.31))
                            .padding()
                            .background{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .background(Color.white)
                                    .cornerRadius(44)
                            }
                            .padding(.top, 280)
                            .padding(.leading, -400)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                        
                        Label(recipe.time, systemImage: "clock.fill")
                            .font(.system(.title2))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.3, green: 0.69, blue: 0.31))
                            .padding()
                            .background{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .background(Color.white)
                                    .cornerRadius(44)
                            }
                            .padding(.top, 280)
                            .padding(.leading, -200)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                    }
                }
                Text(recipe.curiosity)
                    .frame(width: 890)
                    .font(
                        Font.custom("SF Pro", size: 19, relativeTo: .body)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    .padding(.top, 40)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                
                //ver porque o ingredients ta cortando
                    RecipeDetailIngredientsView(recipe: recipe)
                        .padding(.top, 50)
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)

                    RecipeDetailUtensilsView(recipe: recipe)
                        .padding(.top, 80)
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)

                    RecipeDetailSugestionsView(recipe: recipe)
                        .padding(.top, 80)
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                }
            .frame(maxWidth: .infinity)
            .overlay(
                   HStack {
                       Spacer()
                       Button(action: {
                           coordinator.push(.recipePreparation)
                       }) {
                           RecipeDetailButtonView()
                       }
                       .padding(.trailing, 46) // Ajuste conforme necessário
                   }
                   .padding(.top, 30) // Ajuste conforme necessário
                   , alignment: .topTrailing
               )
            }
            .frame(width: 1000)
            .padding(.bottom, 10)
            .navigationTitle(recipe.name)
        }
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
    RecipeDetailView(recipe: mockRecipeLamen)
}
