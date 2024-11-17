//
//  RecipeListItemView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeGridView: View {
    var recipe: Recipe
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        ZStack {
            RecipeGridImageView(recipe: recipe)
            HStack {
                VStack(alignment: .leading, spacing: 8) { // Ajuste no espaçamento interno
                    Text(recipe.name)
                        .font(.custom("SF Pro", size: 28, relativeTo: .title)) // Reduzi o tamanho da fonte
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding() // Ajuste no alinhamento do título
                    Spacer()
                    HStack(spacing: 8) { // Controle de espaçamento entre Labels
                        RecipeGridPeopleView(people: recipe.people)
                        RecipeGridTimeView(timer: recipe.time)
                    }
                    .padding()
                }
                .padding(.leading, 16) // Melhor alinhamento
                Spacer()
            }
        }
        .frame(width: 552, height: 166)
        .minimumScaleFactor(sizeCategory.customMinScaleGridView)
    }
}

extension ContentSizeCategory {
    var customMinScaleGridView: CGFloat{
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
    RecipeGridView(recipe: mockRecipeLamen)
}
