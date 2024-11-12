//
//  RecipeListItemView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeGridView: View {
    var recipe: Recipe
    
    var body: some View {
        ZStack {
            RecipeGridImageView(image: recipe.image)
            Text(recipe.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 286, height: 46, alignment: .leading)
                .padding(.bottom, 144)
            RecipeGridTimeView(timer: recipe.time)
                .padding(.top, 135)
                .padding(.leading, 200)
        }
    }
}

#Preview {
    RecipeGridView(recipe: mockRecipe)
}
