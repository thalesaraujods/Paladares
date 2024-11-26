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
        VStack {
            
            Text("recipe_detail_ingredients")
                .font(.system(.title))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.22, green: 0.56, blue: 0.24))
                .padding(.bottom, 40)
                .padding(.leading, -430)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
            
            VStack (alignment: .leading){
                ForEach(recipe.ingredients, id: \.name) { ingredient in
                    HStack {
                        Text("•" + " \(ingredient.quantity) \(ingredient.unit)")
                            .foregroundColor(Color(red: 0.22, green: 0.56, blue: 0.24))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                        Text(ingredient.name)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                    }.font(
                        Font.custom("SF Pro", size: 19, relativeTo: .body)
                    
                    )
                    .padding(.vertical, 5)
                }
            }
            .padding(.leading, -300)
            .padding(.vertical, 40)
            .padding(.horizontal, 400)
            .background {
                Rectangle()
                    .frame(width: 900)
                    .cornerRadius(35)
                    .shadow(radius: 5)
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

