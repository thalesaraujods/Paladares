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
            Image(.paladinho3)
                .resizable()
                .frame(width: 152, height: 152)
            
            VStack (spacing: 15){
                Text("home_welcome")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                
                Text("home_description")
                    .font(.system(.body))
                    .fontWeight(.medium)
                    .kerning(0.8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.55))
            }
            
            Spacer()
            
            // Botão de Início
            Button(action: {
                coordinator.push(.recipeList)
            }) {
                Label("home_button", systemImage: "")
                    .font(.system(.body))
                    .fontWeight(.bold)
                    .frame(width: 576, height: 70)
                    .background(Color(red: 0.3, green: 0.69, blue: 0.31))
                    .foregroundColor(Color.white)
                    .cornerRadius(34)
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    HomeView()
}
