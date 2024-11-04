//
//  HomeView.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Spacer()
            
            // Logo e Slogan
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 229, height: 229)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            
            Text("Seja bem-vindo ao Paladares")
                .font(.custom("SF Pro", size: 32))
                .multilineTextAlignment(.center)
                .frame(width: 450, height: 80, alignment: .center)
            
            Spacer()
            
            // Botão de Início
            Button(action: {
                coordinator.push(.forms)
            }) {
                Text("Iniciar")
                    .font(.title2)
                    .frame(width: 450, height: 80)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 40)
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    HomeView()
}
