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
            Image(recipe.imageList)
                .resizable()
                .scaledToFill() // Preenche o frame completamente
                .frame(width: 201, height: 201)
                .cornerRadius(27)
                .clipped()
                .rotationEffect(Angle(degrees: 10))
                .padding(.leading, 220)
                .background{
                    Rectangle()
                        .frame(width: 452, height: 166)
                        .cornerRadius(27)
                        .foregroundStyle(Color(red: 0.85, green: 0.31, blue: 0.2))
                }
        }
    }
}

#Preview {
    RecipeGridImageView(recipe: mockRecipeLamen)
}
