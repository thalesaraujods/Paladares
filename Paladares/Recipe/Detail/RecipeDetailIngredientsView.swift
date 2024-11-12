//
//  RecipeDetailIngredientsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailIngredientsView: View {
    
    @State var recipe: Recipe
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Ingredientes")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
            VStack (alignment: .leading){
                ForEach(recipe.ingredients, id: \.name) { ingredient in
                    HStack {
                        Text("\(ingredient.quantity) \(ingredient.unit)")
                            .foregroundColor(.blue)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                        Text(ingredient.name)
                            .foregroundColor(.black)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                    }
                    
                    .font(.system(.body))
                }
            }
            .padding(.leading, -330)
            .padding(.vertical, 40)
            .padding(.horizontal, 420)
            .background {
                Rectangle()
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
            }
        }
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorIngredientsView: CGFloat{
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
    RecipeDetailIngredientsView(recipe: mockRecipe)
}

