//
//  RecipeGridPeopleView.swift
//  Paladares
//
//  Created by Thales Araújo on 16/11/24.
//

import SwiftUI

struct RecipeGridPeopleView: View {
    
    @Environment(\.sizeCategory) var sizeCategory
    var people: String
    var body: some View {
        Label(people, systemImage: "person.2.fill")
            .font(.system(size: 16, weight: .semibold)) // Reduzi o tamanho da fonte
            .foregroundColor(Color.buttonsRecipeList)
            .padding(.horizontal, 8) // Ajustei os paddings
            .padding(.vertical, 4)
            .background(
                RoundedRectangle(cornerRadius: 22) // Melhor ajuste para cantos arredondados
                    .foregroundColor(Color.white)
            )
            .frame(height: 30) // Controle de altura total
            .minimumScaleFactor(sizeCategory.customMinScaleGridPeopleView)
    }
}

extension ContentSizeCategory {
    var customMinScaleGridPeopleView: CGFloat{
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
    RecipeGridPeopleView(people: mockRecipeLamen.people)
}
