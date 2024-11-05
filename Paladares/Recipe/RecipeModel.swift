//
//  RecipeModel.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct Ingredient: Identifiable, Hashable {
    let id = UUID()
    let quantidade: String
    let nome: String
}

struct Recipe: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imagem: String
    let time: String
    let curiosidade: String
    let utensílios: String
    let ingredientes: [Ingredient] // Alterado para uma lista de ingredientes
    let sugestoes: String
    let blocked: Bool
}
var recipes: [Recipe] = [
    Recipe(
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
    ),
    Recipe(name: "Acarajé", imagem: "acaraje", time: "40 min", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Coxinha", imagem: "coxinha", time: "3 horas", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Feijão Tropeiro", imagem: "feijaotropeiro", time: "1 hora", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Bodó de Camarão", imagem: "bobodecamarao", time: "1 hora", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Pato no Tucupi", imagem: "patotucupi", time: "50 min", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Tacacá", imagem: "tacaca", time: "1 hora", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "Pão de Queijo", imagem: "paodequeijo", time: "40 min", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true),
    Recipe(name: "X-Caboquinho", imagem: "caboquinho", time: "10 min", curiosidade: "", utensílios: "", ingredientes: [], sugestoes: "", blocked: true)
]
    
