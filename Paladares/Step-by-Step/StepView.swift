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

    var body: some View {
        NavigationStack {
            
            HStack(spacing: 20) {
                StepChefsView(quantityChefs: 4)
                    .padding(.top, 70)
                    StepbyStepView()
                        
                ZStack {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.corHat1)
                        .padding(.top, 650)// Cor do círculo, ajuste conforme necessário
                    
                    Image(systemName: "arrowshape.right.circle") // Substitua "info.circle" pelo ícone desejado
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .padding(.top, 650)
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
