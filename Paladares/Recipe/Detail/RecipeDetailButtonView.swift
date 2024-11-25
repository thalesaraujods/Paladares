//
//  RecipeDetailButtonView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 13/11/24.
//

import SwiftUI

struct RecipeDetailButtonView: View {
    var body: some View {
        Text("recipe_detail_button")
            .font(.system(.title2))
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .padding()
            .background{
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red: 0.3, green: 0.69, blue: 0.31))
                    .cornerRadius(44)
            }
    }
}

#Preview {
    RecipeDetailButtonView()
}
