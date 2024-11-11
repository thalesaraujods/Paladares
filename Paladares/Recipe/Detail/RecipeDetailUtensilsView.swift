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
                Text("Utensílios Essenciais:")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)

                Text(recipe.utensílios)
                    .font(.system(.body))
                    .lineSpacing(20)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)
                    .padding(.leading, -330)
                    .padding(.horizontal, 410)
                    .padding(.vertical, 40)
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
    RecipeDetailUtensilsView(recipe: recipes[0])
}

