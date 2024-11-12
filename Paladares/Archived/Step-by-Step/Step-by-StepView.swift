////
////  Step-by-StepView.swift
////  Paladares
////
////  Created by Amanda Rabelo on 31/10/24.
////
//
//import Foundation
//import SwiftUI
//
//struct StepbyStepView: View {
//
//    @ObservedObject var step = ReadJsonStepData()
//    @Binding var currentStepIndex: Int // Binding para o índice atual
//    
//    var body: some View {
//        
//        TabView(selection: $currentStepIndex) {
//            ForEach(step.steps.indices, id: \.self) { index in
//                VStack {
//                    
//                    Text(step.steps[index].passos)
//                        .font(.custom("SF Pro", size: 48))
//                        .foregroundStyle(.corCinza2)
//                        .padding(.leading, -300)
//                    
//                    ZStack {
//                        Rectangle()
//                            .frame(width: 640, height: 450)
//                            .cornerRadius(35)
//                            .foregroundStyle(.white)
//                        
//                        Text(step.steps[index].descricao)
//                            .font(.custom("SF Pro", size: 28))
//                            .frame(width: 600, height: 200)
//                            .padding(.bottom, 300)
//                    }
//                }
//                .tag(index) // Marcar a visualização com o índice correspondente
//            }
//        }
//        .frame(width: 600, height: 1000)
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // Para exibir os pontos
//    }
//}
//
//#Preview {
//    StepbyStepView(currentStepIndex: .constant(0))
//}
//
