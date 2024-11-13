//
//  MainPreparationView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct RecipePreparationView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @ObservedObject var viewModel = RecipeViewModel.shared
    @State private var selectedChefId: Int = 1 // Chef inicialmente selecionado
    @State private var currentStepIndex: [Int] = [0, 0, 0, 0] // Índices de passos por chef
    @State private var shadowColor: Color = .colorChef1
    
    @Environment(\.sizeCategory) var sizeCategory
    
    let chefsShadowsColors: [Color] = [.colorChef1, .colorChef2, .colorChef3, .colorChef4]
    let chefsIcons: [Image] = [Image(.iconChef1), Image(.iconChef2), Image(.iconChef3), Image(.iconChef4)]
    
    var body: some View {
        guard let recipe = viewModel.selectedRecipe /*viewModel.dataLoader.recipes.first*/ else {
            return AnyView(Text("Nenhuma receita selecionada."))
        }
        
        return AnyView(
            HStack {
                let totalSteps = recipe.preparationMethods.map { $0.steps.count }
                
                var allStepsCompleted: Bool {
                    currentStepIndex.enumerated().allSatisfy { index, stepIndex in
                        stepIndex == totalSteps[index] - 1
                    }
                }
                
                // Menu lateral de seleção de chefs
                ChefSelectionView(
                    selectedChefId: $selectedChefId,
                    shadowColor: $shadowColor,
                    preparationMethods: recipe.preparationMethods 
                )
                .frame(width: 260)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorStepView)
                
                // Conteúdo principal
                VStack(alignment: .leading, spacing: 20) {
                    if let selectedChef = recipe.preparationMethods.first(where: { $0.chefId == selectedChefId }) {
                        // Exibição do progresso
                        Text("Passo \(currentStepIndex[selectedChefId - 1] + 1)/\(selectedChef.steps.count)")
                            .font(.custom("SF Pro", size: 24, relativeTo: .headline))
                            .fontWeight(.medium)
                            .foregroundColor(Color.shadeGray)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorStepView)
                        
                        // Nome do chef e etapa
                        Text("Chef \(selectedChef.chefId): \(selectedChef.stage)")
                            .font(.custom("SF Pro", size: 48, relativeTo: .largeTitle))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.shadeGray)
                            .frame(width: 824, alignment: .leading)
                            .minimumScaleFactor(sizeCategory.customMinScaleFactorStepView)
                        
                        Spacer()
                        
                        // Exibição dos passos usando StepByStepView
                        StepByStepView(
                            recipe: recipe,
                            selectedChefId: $selectedChefId,
                            currentStepIndex: $currentStepIndex
                        )
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorStepView)
                        
                        Spacer()
                        
                        // Botões de navegação entre passos
                        NavigationButtonsView(
                            currentStepIndex: $currentStepIndex[selectedChefId - 1],
                            allStepsCompleted: .constant(allStepsCompleted),
                            totalSteps: selectedChef.steps.count,
                            foregroundColor: chefsShadowsColors[selectedChefId - 1], // Cor do chef selecionado
                            onFinish: {
                                coordinator.push(.congratulations)
                            }
                        )
                        .minimumScaleFactor(sizeCategory.customMinScaleFactorStepView)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                .frame(width: 1170, height: 788)
                .padding()
        )
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorStepView: CGFloat{
        switch self{
        case .extraSmall, .small, .medium:
            return 1.0
        case .large, .extraLarge, .extraExtraLarge:
            return 0.8
        default:
            return 0.6
        }
    }
}

#Preview {
    RecipePreparationView()
}

