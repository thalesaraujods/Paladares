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
    
    var body: some View {
        HStack {
            Button(action: {
                showExitConfirmation = true
            }) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .font(.system(.body))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24).opacity(0.5))
                    .cornerRadius(1000)
                    .background{
                        Circle()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0.2))
                    }
                    .padding()
                
            }
            Spacer()
        }
        .frame(width: 1300)
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
