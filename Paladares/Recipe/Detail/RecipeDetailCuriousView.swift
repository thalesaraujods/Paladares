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
                
                Text(recipe.curiosidade)
                    .font(.system(.body))
                    .frame(width: 700, height: 200)
                    //.padding(300)
            }
        }
    }
}

#Preview {
    RecipeDetailCuriousView(recipe: recipes[0])
}
