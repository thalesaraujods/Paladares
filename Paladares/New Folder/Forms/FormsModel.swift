//
//  FormsModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import Foundation

enum Anchor {
    case top
    case bottom
}

struct RecipeLevel: Identifiable, Hashable{
    let id = UUID()
    let name: String
}

var levels: [RecipeLevel] = [
    RecipeLevel(name: "Iniciante"),
    RecipeLevel(name: "Avançado")
]

