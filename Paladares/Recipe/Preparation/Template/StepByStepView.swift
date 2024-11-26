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
    
    // dimensoes
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    
    var body: some View {
        TabView(selection: $currentStepIndex[selectedChefId - 1]) {
            if let chefSteps = recipe.preparationMethods.first(where: { $0.chefId == selectedChefId })?.steps {
                ForEach(chefSteps.indices, id: \.self) { index in
                    VStack {
                        Text(chefSteps[index].description)
                            .font(.custom("SF Pro", size: 32, relativeTo: .body))
                            .multilineTextAlignment(.leading) // Ajusta o alinhamento do texto
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading) // Alinha no topo à esquerda
                    .tag(index)
                }
            } else {
                Text("recipe_preparation_methods_not_found \(selectedChefId)")
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(maxWidth: widthScreen*0.6032, maxHeight: heightScreen*0.4882)
    }
}

#Preview {
    StepByStepView(recipe: mockRecipe, selectedChefId: .constant(1), currentStepIndex: .constant([0,0,0,0]))
}

