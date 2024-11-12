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
            
            VStack{
                ForEach(recipe.ingredientes) { ingrediente in
                    HStack {
                        Text(ingrediente.quantidade)
                            .foregroundColor(.blue)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                        Text(ingrediente.nome)
                            .foregroundColor(.black)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
                    }
                    
                    .font(.system(.body))
                }
            }
            .padding(.vertical, 50)
            .padding(.horizontal, 170)
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
    RecipeDetailIngredientsView(recipe: recipes[0])
}

