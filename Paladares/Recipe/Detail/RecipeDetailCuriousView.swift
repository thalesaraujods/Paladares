//
//  RecipeDetailCuriousView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailCuriousView: View {

    @State var recipe: Recipe
    @Environment(\.sizeCategory) var sizeCategory

    var body: some View {
        VStack {

            Text("Curiosidade")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .padding(.horizontal, -400)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            
                Text(recipe.curiosidade)
                    .font(.system(.body))
                    .frame(width: 700, height: 200)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                    .background{
                        Rectangle()
                            .frame(width: 840, height: 250)
                            .cornerRadius(35)
                            .shadow(radius: 10)
                            .foregroundStyle(.white)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            }
        }
    }
}

extension ContentSizeCategory {
    
    var customMinScaleFactorCuriousView: CGFloat{
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
    RecipeDetailCuriousView(recipe: recipes[0])
}

