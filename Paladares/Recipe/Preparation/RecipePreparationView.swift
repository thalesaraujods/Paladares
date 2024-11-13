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
    
    let chefsShadowsColors: [Color] = [.colorChef1, .colorChef2, .colorChef3, .colorChef4]
    let chefsIcons: [Image] = [Image(.iconChef1), Image(.iconChef2), Image(.iconChef3), Image(.iconChef4)]
    
    var body: some View {
        guard let recipe = /*viewModel.selectedRecipe*/ viewModel.dataLoader.recipes.first else {
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
                    StepByStepView(
                        recipe: recipe,
                        selectedChefId: $selectedChefId,
                        currentStepIndex: $currentStepIndex
                    )
                    
                    // Botões de navegação entre passos
                    if let totalSteps = recipe.preparationMethods.first(where: { $0.chefId == selectedChefId })?.steps.count {
                        NavigationButtonsView(
                            currentStepIndex: $currentStepIndex[selectedChefId - 1],
                            totalSteps: totalSteps,
                            foregroundColor: chefsShadowsColors[selectedChefId - 1] // Cor do chef selecionado
                        )
                    }
                }
                .padding()
            }
                .frame(width: 1277, height: 788)
                .padding()
        )
    }
}

#Preview {
    RecipePreparationView()
}

