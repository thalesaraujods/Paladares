//
//  RecipeDetailUtensilsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailUtensilsView: View {
    
    @State var recipe: Recipe
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                // Título da seção
                Text("Utensílios Essenciais:")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)
                
                // Lista de utensílios
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(recipe.utensils, id: \.self) { utensil in
                        Text("• \(utensil)")
                            .font(.system(.body))
                            .lineSpacing(10)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)
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
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)
                }
            }
        }
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorUtensilsView: CGFloat{
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
    RecipeDetailUtensilsView(recipe: mockRecipe)
}

