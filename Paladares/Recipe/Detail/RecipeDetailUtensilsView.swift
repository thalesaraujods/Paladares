//
//  RecipeDetailUtensilsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailUtensilsView: View {

    @State var recipe: Recipe

    var body: some View {
        VStack {

            Text("Utensílios Essenciais:")
                .font(.system(.title))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .padding(.horizontal, -400)
            
            ZStack{
                Rectangle()
                    .frame(width: 840, height: 250)
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                
                Text(recipe.utensílios)
                //ver como deixar no modelo da Tay ("lista" mesmo)
                    .font(.system(.body))
                    .frame(width: 1000, height: 200)
                    .lineSpacing(20)
                    .padding(.leading, -300)
                    //.padding(300)
            }
        }
    }
}

#Preview {
    RecipeDetailUtensilsView(recipe: recipes[0])
}
