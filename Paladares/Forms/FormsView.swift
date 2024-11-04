//
//  FormsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct FormsView: View {
    @StateObject private var preferencesViewModel: PreferencesViewModel = PreferencesViewModel.shared
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 880, height: 600)
                .foregroundStyle(.white)
                .cornerRadius(30)
                .shadow(color: .gray, radius: 3)
            
            FormsImageView()
                .padding(.leading, -440)

            VStack (spacing: -50){
                FormsTitleView()
                    .padding(.leading, 80)
                
                FormsPhraseView()
                    .padding(.leading, 270)
                
                VStack{
                    HStack{
                        
                    }
                }
            }
            .padding(.bottom, 410)
//                HStack {
//                    FormsNamesView()
//                        .padding(.leading, 620)
//                    
//                    Spacer()
//                    FormsQuantityView()
//                        .padding(.leading, -480)
//                }
                
//                Button(action: {
//                    coordinator.push(.country)
//                }) {
//                    Text("Continuar")
//                        .font(.custom("SF Pro", size: 25))
//                        .frame(width: 200, height: 60)
//                        .background(preferencesViewModel.isFormComplete() ? Color.backBotao : Color.gray)
//                        .foregroundColor(preferencesViewModel.isFormComplete() ? Color.palavraBotao : Color.white)
//                        .cornerRadius(20)
//                        .padding(.top, 30)
//                }
//                .disabled(!preferencesViewModel.isFormComplete()) // Desabilita o botão se o formulário não estiver completo
        }
    }
}

#Preview {
    FormsView()
}
