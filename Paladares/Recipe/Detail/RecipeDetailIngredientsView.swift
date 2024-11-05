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
            VStack(alignment: .leading, spacing: 10) {
                Text("Ingredientes")
                    .font(.title)
                    .bold()
                
                ForEach(recipe.ingredientes) { ingrediente in
                    HStack {
                        Text(ingrediente.quantidade)
                            .foregroundColor(.blue) // Quantidade em azul
                            .font(.body)
                        Text(ingrediente.nome)
                            .foregroundColor(.black)
                            .font(.body)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RecipeDetailIngredientsView(recipe: recipes[0])
}

