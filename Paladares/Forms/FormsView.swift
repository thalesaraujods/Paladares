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
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(width: 880, height: 600)
                    .foregroundStyle(.white)
                    .cornerRadius(30)
                //ajustar esse sombreado
                    .shadow(color: .blue, radius: 7)
                VStack {
                    Text("Preparação da Cozinha")
                        .font(.system(size: 33))
                        .fontWeight(.bold)
                        .frame(width: 700, height: 200)
                    
                        
                    HStack{
                        FormsNamesView()
                            .padding(.leading, 620)
                        
                        Spacer()
                        FormsQuantityView()
                            .padding(.leading, -480)
                    }
                    
                    Button(action: {
                      
                    })
                    {
                        Text("Continuar")
                            .font(.custom("SF Pro", size: 25))
                            .frame(width: 200, height: 60)
                            .background(preferencesViewModel.isFormComplete() ? Color.backBotao : Color.gray)
                            .foregroundColor(preferencesViewModel.isFormComplete() ? Color.palavraBotao : Color.white)
                            .foregroundColor(Color.palavraBotao)
                            .cornerRadius(20)
                            .padding(.top, 30)
                    }
                }
                .padding(.bottom, 70)
            }
        }
    }
}
#Preview {
    FormsView()
}

