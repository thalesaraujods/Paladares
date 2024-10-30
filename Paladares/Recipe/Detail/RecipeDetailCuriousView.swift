//
//  RecipeDetailCuriousView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailCuriousView: View {

    @State var recipe: Recipe

    var body: some View {
        VStack {

            Text("Curiosidade")
                .font(.system(size: 36))
                .fontWeight(.bold)
                .padding(.bottom, 20)
                .padding(.horizontal, -400)
            
            ZStack{
                Rectangle()
                    .frame(width: 850, height: 250)
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                
                Text(recipe.curiosidade)
                    .padding(200)
            }
        }
    }
}

#Preview {
    RecipeDetailCuriousView(recipe: recipes[0])
}
