//
//  ButtonBackView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct ButtonBackView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @Binding var showExitConfirmation: Bool
    
    // dimensoes
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    
    var body: some View {
        HStack {
            Button(action: {
                showExitConfirmation = true
            }) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: widthScreen * 0.011, height: heightScreen * 0.015)
                    .font(.system(.body))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24))
                    .cornerRadius(1000)
                    .background{
                        Circle()
                            .frame(width: widthScreen * 0.026, height: heightScreen * 0.034)
                            .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0.2))
                    }
                    .padding()
                
            }
            Spacer()
        }
        .frame(width: widthScreen * 0.95)
        .alert("Você deseja mesmo sair da receita?", isPresented: $showExitConfirmation) {
            Button("Não", role: .cancel) {
                showExitConfirmation = false
            }
            Button("Sim", role: .destructive) {
                coordinator.pop() // Retorna para a tela anterior
            }
        }
    }
}


#Preview {
    @Previewable @State var showExitConfirmation: Bool = true
    
    ButtonBackView(showExitConfirmation: $showExitConfirmation)
}
