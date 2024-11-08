//
//  RecipeEndSentenceView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndSentenceView: View {
    var body: some View {
        Text("Você concluiu esta receita, continue explorando \n novas culturas!")
            .font(.system(.body))
            .fontWeight(.bold)
            .foregroundStyle(.corCinza2)
            .kerning(0.4)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    RecipeEndSentenceView()
}
