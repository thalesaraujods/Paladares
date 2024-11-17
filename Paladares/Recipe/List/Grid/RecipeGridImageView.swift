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
            Rectangle()
                .cornerRadius(27)
                .foregroundColor(Color.templateRecipeList)
            HStack {
                Spacer()
                Image(recipe.imageList)
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    
            }
            .frame(width: 552, height: 166)
            .clipped()
            
        }
        .frame(width: 552, height: 166)
    }
}

#Preview {
    RecipeGridImageView(recipe: mockRecipeLamen)
}
