//
//  RecipeListModel.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct Recipe: Identifiable, Hashable {
    let id = UUID()
    let name: String
    //fazer o caso da imagens
    let imagem: String
    let time: String
    let curiosidade: String
    let utensílios: String
    //fazer o caso do "número" de quanto precisa pra cada ingrediente conforme o cálculo de consumidores
    let ingredientes: String
    let sugestoes: String
}

var recipes: [Recipe] = [
    Recipe(name: "Feijoada",
           imagem: "feijoada",
           time: "2 horas",
           curiosidade: "Os escravos africanos que trabalhavam nas plantações de cana-de-açúcar e café muitas vezes tinham acesso apenas a restos de carne, como as partes menos nobres dos porcos e outras carnes menos valorizadas.",
           utensílios: "Panela de Pressão \n Panelas Grandes \n Colheres com cabos longos",
           ingredientes: "costela suína \n de carne-seca \n orelha de porco \n pé de porco \n  rabo de porco \n pedaço de lombo suíno defumado \n xícaras (chá) de feijão preto \n xícara (chá) de bacon picado \n gomo calabresa \n cebolas médias \n dentes de alho \n colheres (sopa) de cheiro \n",
           sugestoes: "Substitua carne suína pela bovina, se preferir.\n Adicione temperos de sua escolha, se preferir."
          ),
    Recipe(name: "Acarajé", imagem: "acaraje", time: "40 min", curiosidade: "", utensílios: "", ingredientes: "", sugestoes: ""),
    Recipe(name: "Coxinha", imagem: "coxinha", time: "3 horas", curiosidade: "", utensílios: "", ingredientes: "", sugestoes: "")
]
    
