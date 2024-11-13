//
//  NavigationButtonsView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct NavigationButtonsView: View {
    @Binding var currentStepIndex: Int
    let totalSteps: Int
    let foregroundColor: Color // Cor que muda de acordo com o chef selecionado
    
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
            
            
        }
        .padding(.horizontal, 50)
        .frame(width: 824)
    }
}
