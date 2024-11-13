//
//  StepByStepView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct StepByStepView: View {
    
    var recipe: Recipe
    @Binding var selectedChefId: Int
    @Binding var currentStepIndex: [Int]
    
    var body: some View {
        TabView(selection: $currentStepIndex[selectedChefId - 1]) {
            if let chefSteps = recipe.preparationMethods.first(where: { $0.chefId == selectedChefId })?.steps {
                ForEach(chefSteps.indices, id: \.self) { index in
                    VStack {
                        Text(chefSteps[index].stepNumber)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(chefSteps[index].description)
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    .tag(index) // Conecta com o índice
                }
            } else {
                Text("Nenhum passo disponível para o Chef \(selectedChefId)")
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width: 650.0, height: 500.0)
    }
}

#Preview {
    StepByStepView(recipe: Recipe(
        id: "550e8400-e29b-41d4-a716-446655440001",
        name: "X-Caboquinho",
        image:"xcaboquinho1.jpg",
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
    ),
                   selectedChefId: .constant(1),
                   currentStepIndex: .constant([0,0,0,0]))
}

