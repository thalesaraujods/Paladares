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
    
    // Estado para armazenar a cor do shadow
    @State private var shadowColor: Color = .gray
    @State private var currentStepIndex: Int = 0 // Índice do passo atual
    
    var body: some View {
        NavigationStack {
           // HStack(spacing: 20) {
            HStack{
                
                StepChefsView(quantityChefs: quantityChefs)
                    .padding(.top, 70)
                
                ZStack{
                    StepArrowView()
                        .padding(.top, 80)

                }
                ZStack{
                    StepbyStepView(currentStepIndex: $currentStepIndex) // Passando o índice atual
                    if currentStepIndex > 0 { // Passo 2 tem índice 1
                        Button(action: {
                            // Ação para voltar ao passo anterior
                            currentStepIndex -= 1
                        }) {
                            ZStack {
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.corHat1)
                                
                                Image(systemName: "arrowshape.left.circle")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                            }
                            
                        }
                        .padding(.top, 650)
                        .padding(.leading, 22)
                    }
                }
                VStack {
                    Button(action: {
                        // Ação para passar para o próximo passo
                        if currentStepIndex < data.steps.count - 1 {
                            currentStepIndex += 1
                        }
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.corHat1)
                            
                            Image(systemName: "arrowshape.right.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.top, 650)
                  // Ajuste conforme necessário
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
