//
//  StepChefsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 01/11/24.
//

import SwiftUI

struct StepChefsView: View {
    
    let quantityChefs: Int
    let hatsChefs: [Image] = [Image("chef2"), Image("chef4"), Image("chef1"), Image("chef3")]
    let colorsHats: [Color] = [.corHat1, .corHat2, .corHat3, .corHat4]
    
    
    // Estado para armazenar a cor do shadow
    @State private var shadowColor: Color = .gray

    var body: some View {
        NavigationStack {
//            ZStack {
//                // Botão de navegação
//                
//                Button(action: {
//                    // Ação para o botão, se necessário
//                }) {
//                    Image(systemName: "xmark.circle.fill")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .foregroundStyle(Color.corCinza2)
//                        .opacity(0.5)
//                        .padding(.horizontal, -600)
//                        .padding(.top, 250)
//                }
//                //.padding(.top, 50)
//            }
            ZStack {
                Rectangle()
                    .frame(width: 240, height: 650)
                    .cornerRadius(40)
                    .foregroundStyle(.white)
                    .shadow(color: shadowColor, radius: 10) // Usando a cor do shadow
//                    .padding(.top, 70)
//                    .padding(.horizontal, -520)

                VStack {
                    ForEach(0..<quantityChefs, id: \.self) { index in
                        Button(action: {
                            // Atualiza a cor do shadow com base no chef clicado
                            shadowColor = colorsHats[index]
                            print("Clicou no Chef \(index + 1)")
                        }) {
                            ZStack {
                                Circle()
                                    .frame(width: 85, height: 85)
                                    .padding(7)
                                    .foregroundStyle(Color.white)
                                    .shadow(radius: 5)

                                hatsChefs[index]
                                    .resizable()
                                    .frame(width: 65, height: 65)
                                    .colorMultiply(colorsHats[index])
                            }
                        }
                        .buttonStyle(PlainButtonStyle()) // Remove o estilo padrão do botão

                        Text("Chef \(index + 1)")
                    }
                }
//                .padding(.top, 70)
//                .padding(.horizontal, -450)
               
                
              
            }
           // .border(.red)
//            .padding(.bottom, 240)
            
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    StepChefsView(quantityChefs: 4)
}

