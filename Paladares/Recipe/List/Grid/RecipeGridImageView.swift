//
//  RecipeGridImageView.swift
//  Paladares
//
//  Created by Thales Araújo on 01/11/24.
//

import SwiftUI

struct RecipeGridImageView: View {
    
   // var image: String
    let recipe: Recipe
    
    var body: some View {
        ZStack {
            Image(recipe.image)
                .resizable()
                .scaledToFill() // Preenche o frame completamente
                .frame(width: 452, height: 166)
                .cornerRadius(27)
                .clipped()
                
        }
    }
}

#Preview {
    RecipeGridImageView(recipe: mockRecipeLamen)
}
