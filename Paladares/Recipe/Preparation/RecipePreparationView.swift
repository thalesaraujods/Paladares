//
//  MainPreparationView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct RecipePreparationView: View {
    
    @ObservedObject var viewModel = RecipeViewModel.shared
    @State private var selectedChefId: Int = 1 // Chef inicialmente selecionado
    @State private var currentStepIndex: [Int] = [0, 0, 0, 0] // Índices de passos por chef
    @State private var shadowColor: Color = .gray
    
    var body: some View {
        guard let recipe = viewModel.selectedRecipe else {
            return AnyView(Text("Nenhuma receita selecionada."))
        }
        
        return AnyView(
            HStack {
                // Menu lateral de seleção de chefs
                ChefSelectionView(
                    selectedChefId: $selectedChefId,
                    shadowColor: $shadowColor,
                    preparationMethods: recipe.preparationMethods
                )
                .frame(width: 260)
                
                // Conteúdo principal: passos do chef selecionado
                VStack {
                    StepByStepView(recipe: recipe, selectedChefId: $selectedChefId, currentStepIndex: $currentStepIndex)
                    
                    // Botões de navegação entre passos
                    HStack {
                        Button(action: {
                            if currentStepIndex[selectedChefId - 1] > 0 {
                                currentStepIndex[selectedChefId - 1] -= 1
                            }
                        }) {
                            Image(systemName: "arrow.left")
                                .frame(width: 50, height: 50)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        .disabled(currentStepIndex[selectedChefId - 1] == 0) // Desabilita se for o primeiro passo
                        
                        //Spacer()
                        
                        Button(action: {
                            if let totalSteps = recipe.preparationMethods.first(where: { $0.chefId == selectedChefId })?.steps.count,
                               currentStepIndex[selectedChefId - 1] < totalSteps - 1 {
                                currentStepIndex[selectedChefId - 1] += 1
                            }
                        }) {
                            Image(systemName: "arrow.right")
                                .frame(width: 50, height: 50)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                        .disabled(recipe.preparationMethods.first(where: { $0.chefId == selectedChefId })?.steps.count == currentStepIndex[selectedChefId - 1] + 1)
                    }
                    .padding(.horizontal, 50)
                }
                .padding()
            }
        )
    }
}

#Preview {
    RecipePreparationView()
}

