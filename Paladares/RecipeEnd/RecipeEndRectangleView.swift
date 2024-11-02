//
//  RecipeEndRectangleView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndRectangleView: View {
    var body: some View {
        Rectangle()
            .frame(width: 880, height: 600)
            .foregroundStyle(.white)
            .cornerRadius(30)
            .shadow(color: .gray, radius: 4)
    }
}

#Preview {
    RecipeEndRectangleView()
}
