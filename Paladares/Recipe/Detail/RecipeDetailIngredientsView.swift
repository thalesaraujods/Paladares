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
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .padding(.horizontal, -400)
            ZStack {
                Rectangle()
                    .frame(width: 840, height: 750)
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    
                    ForEach(recipe.ingredientes) { ingrediente in
                        HStack(alignment: .top) {
                            Text(ingrediente.quantidade)
                                .foregroundColor(.blue)
                            Text(ingrediente.nome)
                                .foregroundColor(.black)
                        }
                        .font(.system(.body))
                    }
                    .padding(.horizontal, 20)
                }
                .padding()
            }
        }
    }
}

#Preview {
    RecipeDetailIngredientsView(recipe: recipes[0])
}

