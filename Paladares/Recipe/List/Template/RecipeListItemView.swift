//
//  RecipeListItemView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeListItemView: View {
    @Binding var recipe: Recipe
    
    var body: some View {
        ZStack {
            Image(recipe.imagem)
                .resizable() // Permite que a imagem seja redimensionada
                .scaledToFill() // Preenche o frame completamente
                .frame(width: 317, height: 192)
                .cornerRadius(27)
                .clipped() // Garante que a imagem não ultrapasse as bordas arredondadas
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 317, height: 192)
                .cornerRadius(27)
                .opacity(0.3)
            Text(recipe.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 286, height: 46, alignment: .leading)
                .padding(.bottom, 144)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 89, height: 29)
                .background(.white.opacity(0.74))
                .cornerRadius(35.5)
                .padding(.top, 135)
                .padding(.leading, 200)
        }
    }
}

#Preview {
    @Previewable @State var recipeView = Recipe(name: "Acarajé", imagem: "acaraje", time: "40 min", curiosidade: "", utensílios: "", ingredientes: "", sugestoes: "")
    
    RecipeListItemView(recipe: $recipeView)
}
