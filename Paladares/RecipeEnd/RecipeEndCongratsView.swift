//
//  RecipeEndCongratsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndCongratsView: View {
    var body: some View {
        VStack (spacing: 30){
            Image(.congrats)
            Text("Parabéns!")
                .font(.system(.largeTitle))
                .fontWeight(.bold)
                .kerning(0.4)
        }
    }
}

#Preview {
    RecipeEndCongratsView()
}
