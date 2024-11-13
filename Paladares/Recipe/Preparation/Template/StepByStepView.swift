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
                        Text(chefSteps[index].description)
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    .tag(index)
                }
            } else {
                Text("Nenhum passo disponível para o Chef \(selectedChefId)")
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(maxWidth: 824, maxHeight: 500)
    }
}

#Preview {
    StepByStepView(recipe: mockRecipe, selectedChefId: .constant(1), currentStepIndex: .constant([0,0,0,0]))
}

