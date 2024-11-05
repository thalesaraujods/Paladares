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
            RecipeGridImageView(image: recipe.imagem)
            Text(recipe.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 286, height: 46, alignment: .leading)
                .padding(.bottom, 144)
            RecipeGridTimeView(timer: recipe.time)
                .padding(.top, 135)
                .padding(.leading, 200)
        }
        .overlay{
            ZStack {
                if recipe.blocked {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 317, height: 192)
                        .cornerRadius(27)
                        .opacity(0.6)
                    Image(systemName: "lock.fill")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    RecipeGridView(recipe: Recipe(name: "Acarajé", imagem: "acaraje", time: "40 min", curiosidade: "", utensílios: "", ingredientes: "", sugestoes: "", blocked: true))
}
