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
    RecipeGridView(recipe: Recipe(
        name: "Feijoada Brasileira",
        imagem: "feijoada",
        time: "2 horas",
        curiosidade: "Os escravos africanos que trabalhavam nas plantações de cana-de-açúcar e café muitas vezes tinham acesso apenas a restos de carne, como as partes menos nobres dos porcos e outras carnes menos valorizadas.",
        utensílios: " . Panela de Pressão \n . Panelas Grandes \n . Colheres com cabos longos",
        ingredientes: [
            Ingredient(quantidade: "200g", nome: "costela suína"),
            Ingredient(quantidade: "250g", nome: "carne-seca"),
            Ingredient(quantidade: "1/2", nome: "orelha de porco"),
            Ingredient(quantidade: "1/2", nome: "pé de porco"),
            Ingredient(quantidade: "1/2", nome: "rabo de porco"),
            Ingredient(quantidade: "1", nome: "pedaço de lombo suíno defumado"),
            Ingredient(quantidade: "2 xícaras", nome: "feijão preto"),
            Ingredient(quantidade: "1/2 xícara", nome: "bacon picado"),
            Ingredient(quantidade: "1", nome: "gomo calabresa"),
            Ingredient(quantidade: "2", nome: "cebolas médias"),
            Ingredient(quantidade: "4 dentes", nome: "alho"),
            Ingredient(quantidade: "3 colheres", nome: "cheiro-verde picado")
        ],
        sugestoes: " . Substitua carne suína pela bovina, se preferir.\n . Adicione temperos de sua escolha, se preferir.",
        blocked: false
    ))
}
