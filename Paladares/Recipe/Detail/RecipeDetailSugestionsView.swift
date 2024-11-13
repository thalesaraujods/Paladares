//
//  RecipeDetailSugestionsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailSugestionsView: View {
    
    @State var recipe: Recipe
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Sugestões")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .foregroundColor(Color(red: 0.22, green: 0.56, blue: 0.24))
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorSugestionsView)
                
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(recipe.suggestions, id: \.self) { suggestion in
                        Text("• \(suggestion)")
                            .font(.system(.body))
                            .lineSpacing(10)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorSugestionsView)
                    }
                }
                .padding(.leading, -330)
                .padding(.vertical, 40)
                .padding(.horizontal, 380)
                .background {
                    Rectangle()
                        .cornerRadius(35)
                        .shadow(radius: 5)
                        .foregroundStyle(.white)
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorSugestionsView)
                }
            }
        }
    }
}

extension ContentSizeCategory {
    
    var customMinScaleFactorSugestionsView: CGFloat{
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
    RecipeDetailSugestionsView(recipe: mockRecipe)
}
