//
//  RecipeDetailIngredientsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailIngredientsView: View {

    @State var recipe: Recipe

    var body: some View {
        VStack {

            Text("Ingredientes")
                .font(.system(size: 36))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .padding(.horizontal, -400)
            
            ZStack{
                Rectangle()
                    .frame(width: 840, height: 750)
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                
                Text(recipe.ingredientes)
                    .font(.custom("SF Pro", size: 31))
                    .frame(width: 550, height: 700)
                    .lineSpacing(20)
                    //.padding(300)
            }
        }
    }
}

#Preview {
    RecipeDetailIngredientsView(recipe: recipes[0])
}

