//
//  StepView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import SwiftUI

struct StepView: View {
    
    let quantityChefs: Int
    let hatsChefs: [Image] = [Image("chef2"), Image("chef4"), Image("chef1"), Image("chef3")]
    let colorsHats: [Color] = [.corHat1, .corHat2, .corHat3, .corHat4]
    @ObservedObject var data = ReadJsonStepData()
    
    @State private var currentStepIndex: Int = 0 // Índice do passo atual
    @State private var currentColor: Color = .corHat1 // Cor atual
    @State private var shadowColor: Color = .corHat1 // Cor da sombra
    @State private var stepColors: [Color] // Array para armazenar as cores de cada passo
    
    init(quantityChefs: Int) {
        self.quantityChefs = quantityChefs
        // Inicializa as cores dos passos com uma cor padrão
        self._stepColors = State(initialValue: Array(repeating: .corHat1, count: 23)) // Supondo que existam 23 passos
    }
    
    var body: some View {
        NavigationStack {
            HStack(spacing: 90) {
                
                StepChefsView(quantityChefs: quantityChefs, shadowColor: $shadowColor)
                    .padding(.top, 70)
                
                ZStack {
                    StepbyStepView(currentStepIndex: $currentStepIndex) // Passando o índice atual
                    
                    ZStack {
                        StepArrowView()
                            .padding(.top, 80)
                            .padding(.leading, -300)
                        
                        if currentStepIndex > 0 { // Passo 2 tem índice 1
                            Button(action: {
                                // Ação para voltar ao passo anterior
                                currentStepIndex -= 1
                                // Mantém a cor do passo atual
                                shadowColor = stepColors[currentStepIndex]
                            }) {
                                ZStack {
                                    Circle()
                                        .frame(width: 80, height: 80)
                                        .foregroundStyle(stepColors[currentStepIndex])
                                    
                                    Image(systemName: "arrowshape.left.fill")
                                        .resizable()
                                        .frame(width: 45, height: 45)
                                        .foregroundColor(.white)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.top, 650)
                            .padding(.leading, -300)
                        }
                        
                       
                            if currentStepIndex < 21 { // Se não for o último passo
                                Button(action: {
                                    // Ação para passar para o próximo passo
                                    currentStepIndex += 1
                               
                                    // Se a cor do passo ainda não foi definida, escolha uma nova
                                    if stepColors[currentStepIndex] == .corHat1 { // Verifica se a cor padrão foi usada
                                        stepColors[currentStepIndex] = colorsHats.randomElement()! // Seleciona uma cor aleatória
                                    }
                                    shadowColor = stepColors[currentStepIndex] // Atualiza a sombra
                                }) {
                                    ZStack {
                                        Circle()
                                            .frame(width: 80, height: 80)
                                            .foregroundStyle(stepColors[currentStepIndex])
                                        
                                        Image(systemName: "arrowshape.right.fill")
                                            .resizable()
                                            .frame(width: 45, height: 45)
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding(.top, 650)
                                .padding(.leading, 600)
                                
                            } else { // Se for o último passo
                                Button(action: {
                                    
                                }) {
                                    Text("Finalizar")
                                        .fontWeight(.bold)
                                        .padding()
                                        .background(stepColors[currentStepIndex]) // Usar a cor do último passo
                                        .foregroundColor(.white)
                                        .cornerRadius(30)
                                }
                                .padding(.top, 650)
                                .padding(.leading, 580)
                            }
                        }
                }
            }
            .padding(.bottom, 40)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    StepView(quantityChefs: 4)
}
