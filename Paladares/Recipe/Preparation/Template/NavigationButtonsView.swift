//
//  NavigationButtonsView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct NavigationButtonsView: View {
    @Binding var currentStepIndex: Int
    @Binding var allStepsCompleted: Bool // Indica se todos os chefs concluíram seus passos
    let totalSteps: Int
    let foregroundColor: Color // Cor que muda de acordo com o chef selecionado
    let onFinish: () -> Void // Ação ao finalizar todos os passos
    
    var body: some View {
        HStack {
            // Botão Voltar
            Button(action: {
                if currentStepIndex > 0 {
                    currentStepIndex -= 1
                }
            }) {
                Image(systemName: "arrow.left")
                    .frame(width: 84, height: 84)
                    .background(foregroundColor)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .disabled(currentStepIndex == 0) // Desabilita no primeiro passo
            .opacity(currentStepIndex == 0 ? 0 : 1)
            
            Spacer()
            
            // Botão Avançar ou Finalizar
            if allStepsCompleted {
                // Botão Finalizar
                Button(action: {
                    onFinish()
                }) {
                    Text("Finalizar")
                        .font(.headline)
                        .frame(width: 150, height: 50)
                        .background(foregroundColor)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                }
            } else {
                // Botão Avançar
                Button(action: {
                    if currentStepIndex < totalSteps - 1 {
                        currentStepIndex += 1
                    }
                }) {
                    Image(systemName: "arrow.right")
                        .frame(width: 84, height: 84)
                        .background(foregroundColor)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                .disabled(currentStepIndex == totalSteps - 1) // Desabilita no último passo
                .opacity(currentStepIndex == totalSteps - 1 ? 0 : 1) // Reduz a opacidade no último passo
            }
            
            
            
        }
        .padding(.horizontal, 50)
        .frame(width: 824)
    }
}

#Preview {
    @Previewable @State var currentStepIndex = 2
    @Previewable @State var allStepsCompleted = false
    
    NavigationButtonsView(
        currentStepIndex: $currentStepIndex,
        allStepsCompleted: $allStepsCompleted,
        totalSteps: 4,
        foregroundColor: .blue,
        onFinish: {
            print("Finalizar ação.")
        }
    )
}
