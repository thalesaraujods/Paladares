//
//  RecipeDetailView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailView: View {

    let recipe: Recipe
    
    var body: some View {
        
        VStack{
            //ScrollView{
                Text(recipe.name)
                //.font(.title)
                    .font(.system(size: 56))
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                    .padding(.horizontal, -400)
                
                Image(recipe.imagem)
                    .resizable()
                    .frame(width: 800, height: 400)
                    .cornerRadius(40)
                //ver se terão mais imagens da comida que será preparada
            
            HStack{
                Button(action: {
                   //vai começar a receita
                })
                {
                    Label("Começar", systemImage: "play.fill")
                        .font(.custom("SF Pro", size: 25))
                        .frame(width: 180, height: 75)
                        .background(Color.backBotao)
                        .foregroundColor(Color.palavraBotao)
                        .cornerRadius(160)
                }
                .padding(.top,50)
                .padding(.trailing, 440)
                
                
                Label(recipe.time, systemImage: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                    .font(.custom("SF Pro", size: 25))
                    .frame(width: 180, height: 75)
                    .background(Color.white)
                    .foregroundStyle(Color.corCinza)
                    .cornerRadius(160)
                    .shadow(radius: 5)
                    .padding(.top,50)
                    
            }
            
            }
        //}
        .padding(.bottom, 10)
    }
}

#Preview {
    RecipeDetailView(recipe: recipes[0])
}
