//
//  Step-by-StepView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct StepbyStepView: View {

    @ObservedObject var step = ReadJsonStepData()
    
    var body: some View {
        TabView {
            ForEach(step.steps) { step in
                VStack {
                    Text(step.passos)
                        .font(.custom("SF Pro", size: 48))
                        .foregroundStyle(.corCinza2)
                        .padding(.leading, -300)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 640, height: 450)
                            .cornerRadius(35)
                            .foregroundStyle(.white)
                        
                        Text(step.descricao)
                            .font(.custom("SF Pro", size: 28))
                            .frame(width: 600, height: 200)
                            .padding(.bottom, 300)
                    }

                    // Ícone em formato de círculo
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .colorMultiply(.corHat1) // Cor do círculo, ajuste conforme necessário
                        
                        Image(systemName: "arrowshape.right.circle") // Substitua "info.circle" pelo ícone desejado
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 700) // Ajuste este valor para mover o círculo para a direita
                                       .padding(.top, 20)
                }
                .padding(.leading, 350)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // Para exibir os pontos
    }
}

#Preview {
    StepbyStepView()
}

