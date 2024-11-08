//
//  RecipeEndButtonView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndButtonView: View {
    
    var body: some View {
        Label("Retornar ao Menu", systemImage: "")
            .font(.system(.body))
            .fontWeight(.bold)
            .frame(width: 274, height: 70)
            .background(Color(red: 0.2, green: 0.6, blue: 0.93))
            .foregroundColor(Color.white)
            .cornerRadius(34)
    }
}

#Preview {
    RecipeEndButtonView()
}
