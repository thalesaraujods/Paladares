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
            
//            .frame(width: 850, height: 400)

            VStack(alignment: .leading, spacing: 20) {
                Text("Utensílios Essenciais:")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)

                Text(recipe.utensílios)
                    .font(.system(.body))
                    //.frame(width: 400, height: 200)
                    .lineSpacing(20)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorUtensilsView)
                    .padding(.leading, -370)
                    .padding(.horizontal, 420)
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

