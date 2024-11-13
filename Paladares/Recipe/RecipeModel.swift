//
//  RecipeModel.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct Recipe: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let country: String
    let people: String
    let time: String
    let curiosity: String
    let utensils: [String]
    let ingredients: [Ingredient]
    let suggestions: [String]
    let preparationMethods: [ChefPreparation]
}

struct Ingredient: Codable {
    let name: String
    let quantity: String
    let unit: String
}

struct ChefPreparation: Codable {
    let chefId: Int
    let steps: [Step]
}

struct Step: Codable {
    let stepNumber: String
    let description: String
}

//Dado Mockado para Preview (x-caboquinho)
let mockRecipe = Recipe(
    id: "550e8400-e29b-41d4-a716-446655440001",
    name: "X-Caboquinho",
    image: "xcaboquinho1.jpg",
    country: "Brasil",
    people: "4 pessoas",
    time: "30 minutos",
    curiosity: "O X-Caboquinho é um prato típico de Manaus, conhecido como um dos lanches mais tradicionais da cultura amazônica. Ele combina o tucumã, um fruto amazônico, com queijo coalho e pão.",
    utensils: ["Frigideira", "Faca de chef", "Espátula"],
    ingredients: [
        Ingredient(name: "pães franceses", quantity: "4", unit: "unidades"),
        Ingredient(name: "queijo coalho", quantity: "12", unit: "fatias"),
        Ingredient(name: "manteiga", quantity: "4", unit: "colheres de sopa"),
        Ingredient(name: "tiras de tucumã", quantity: "4", unit: "xícaras"),
        Ingredient(name: "bananas", quantity: "4", unit: "unidades")
    ],
    suggestions: ["Sirva com farinha de mandioca para acompanhar."],
    preparationMethods: [
        ChefPreparation(chefId: 1, steps: [
            Step(stepNumber: "Passo 1", description: "Corte os pães ao meio, mas sem separar completamente as metades."),
            Step(stepNumber: "Passo 2", description: "Passe manteiga nas duas metades internas de cada pão."),
            Step(stepNumber: "Passo 3", description: "Aqueça levemente os pães em uma frigideira para dourar a manteiga.")
        ]),
        ChefPreparation(chefId: 2, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o tucumã em tiras finas e uniformes."),
            Step(stepNumber: "Passo 2", description: "Coloque as tiras de tucumã em uma tigela e reserve.")
        ]),
        ChefPreparation(chefId: 3, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o queijo coalho em fatias e grelhe até dourar dos dois lados."),
            Step(stepNumber: "Passo 2", description: "Coloque o queijo grelhado em um prato e reserve.")
        ]),
        ChefPreparation(chefId: 4, steps: [
            Step(stepNumber: "Passo 1", description: "Descasque as bananas e corte-as em fatias finas."),
            Step(stepNumber: "Passo 2", description: "Em uma frigideira, aqueça as fatias de banana até ficarem levemente douradas."),
            Step(stepNumber: "Passo 3", description: "Monte os pães, adicionando os ingredientes preparados pelos outros chefs: tiras de tucumã, queijo grelhado e fatias de banana."),
            Step(stepNumber: "Passo 4", description: "Leve os pães montados à frigideira quente para aquecer por 2 minutos de cada lado, garantindo que todos os ingredientes fiquem bem integrados.")
        ])
    ]
)

//Dado Mockado para Preview (lamen)
let mockRecipeLamen = Recipe(
    id: "550e8400-e29b-41d4-a716-446655440002",
    name: "Lamén Japonês",
    image: "backDetailLamen",
    country: "Japão",
    people: "4 pessoas",
    time: "1 hora",
    curiosity: "Curiosidade: Embora popular no Japão, o lámen é originário da China e foi adaptado pelos japoneses, que criaram suas próprias variações regionais e técnicas únicas para o prato.",
    utensils: ["Coador de Macarrão", "Panela Grande", "Faca Afiada", "Peneira", "Hashi"],
    ingredients: [
        Ingredient(name: "de macarrão para lámen", quantity: "1", unit: "pacote"),
        Ingredient(name: "de lombo de porco", quantity: "8", unit: "pedaços"),
        Ingredient(name: "ovos", quantity: "2", unit: ""),
        Ingredient(name: "de massa de peixe (kamaboko)", quantity: "4", unit: "rodelas"),
        Ingredient(name: "de alga nori", quantity: "4", unit: "pedaços"),
        Ingredient(name: "Broto de bambu em conserva (opcional)", quantity: "", unit: ""),
        Ingredient(name: "de água", quantity: "2", unit: "litros"),
        Ingredient(name: "de caldo de carne de porco", quantity: "1/2", unit: "xícara (chá)"),
        Ingredient(name: "de shoyo", quantity: "4", unit: "colheres (sopa)"),
        Ingredient(name: "de caldo de galinha", quantity: "3", unit: "tablets"),
        Ingredient(name: "Sal e pimenta do reino", quantity: "", unit: ""),
        Ingredient(name: "Cebolinha", quantity: "", unit: "")
    ],
    suggestions: ["Você pode substituir o porco, por frango desfiado, cogumelos shiitake ou tofu, se preferir;", "Se não tiver nori, pode usar flocos de alga marinha (wakame) ou até algas secas desfiadas."],
    preparationMethods: [
        ChefPreparation(chefId: 1, steps: [
            Step(stepNumber: "Passo 1", description: "Corte os pães ao meio, mas sem separar completamente as metades."),
            Step(stepNumber: "Passo 2", description: "Passe manteiga nas duas metades internas de cada pão."),
            Step(stepNumber: "Passo 3", description: "Aqueça levemente os pães em uma frigideira para dourar a manteiga.")
        ]),
        ChefPreparation(chefId: 2, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o tucumã em tiras finas e uniformes."),
            Step(stepNumber: "Passo 2", description: "Coloque as tiras de tucumã em uma tigela e reserve.")
        ]),
        ChefPreparation(chefId: 3, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o queijo coalho em fatias e grelhe até dourar dos dois lados."),
            Step(stepNumber: "Passo 2", description: "Coloque o queijo grelhado em um prato e reserve.")
        ]),
        ChefPreparation(chefId: 4, steps: [
            Step(stepNumber: "Passo 1", description: "Descasque as bananas e corte-as em fatias finas."),
            Step(stepNumber: "Passo 2", description: "Em uma frigideira, aqueça as fatias de banana até ficarem levemente douradas."),
            Step(stepNumber: "Passo 3", description: "Monte os pães, adicionando os ingredientes preparados pelos outros chefs: tiras de tucumã, queijo grelhado e fatias de banana."),
            Step(stepNumber: "Passo 4", description: "Leve os pães montados à frigideira quente para aquecer por 2 minutos de cada lado, garantindo que todos os ingredientes fiquem bem integrados.")
        ])
    ]
)
