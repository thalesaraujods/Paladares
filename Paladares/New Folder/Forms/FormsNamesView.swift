//
//  FormsNamesView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct FormsNamesView: View {

    var body: some View {
        
        VStack {

            HStack{
                Image(.cozinheiroForms)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -350)
                
                Text("Cozinheiros")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -280)
            }
            
            HStack{
                Image(systemName: "fork.knife")
                    .resizable()
                    .frame(width: 30, height: 40)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -330)
                
                Text("Degustadores")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            }
            
            HStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -330)
            
                Text("Nível de Habilidade")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            }
            
        }
    }
}

#Preview {
    FormsNamesView()
}
//fork.knife

//Button(action: {
//    // Implementar a ação do botão, como navegar para a próxima view
//    print("Avançando para a próxima etapa...")
//}) {
//    Text("Avançar")
//        .font(.custom("SF Pro", size: 25))
//        .padding()
//        .frame(width: 250, height: 75)
//        .background(preferencesViewModel.isFormComplete() ? Color.backBotao : Color.gray)
//        .foregroundColor(preferencesViewModel.isFormComplete() ? Color.palavraBotao : Color.white)
//        .cornerRadius(20)
//        .padding(.horizontal, 40)
//        .padding(.top, 550)
//}
//.disabled(!preferencesViewModel.isFormComplete()) // Desabilita se o formulário não estiver completo
//.frame(width: 750, height: 95)
//Label("Degustadores", systemImage: "fork.knife")
//    .font(.system(size: 36))
//    .padding(.bottom, 40)
//    .padding(.horizontal, -375)
