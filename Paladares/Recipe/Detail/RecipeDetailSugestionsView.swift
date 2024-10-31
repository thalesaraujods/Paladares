//
//  RecipeDetailSugestionsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct RecipeDetailSugestionsView: View {

    @State var recipe: Recipe

    var body: some View {
        VStack {

            Text("Sugestões")
                .font(.system(size: 36))
                .fontWeight(.bold)
                .padding(.bottom, 40)
                .padding(.horizontal, -400)
            
            ZStack{
                Rectangle()
                    .frame(width: 840, height: 250)
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .foregroundStyle(.white)
                
                Text(recipe.sugestoes)
                    .font(.custom("SF Pro", size: 31))
                    .frame(width: 750, height: 200)
                    .lineSpacing(20)
                    //.padding(300)
            }
        }
    }
}

#Preview {
    RecipeDetailSugestionsView(recipe: recipes[0])
}

