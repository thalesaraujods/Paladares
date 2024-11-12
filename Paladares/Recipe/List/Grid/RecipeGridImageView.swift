//
//  RecipeGridImageView.swift
//  Paladares
//
//  Created by Thales Araújo on 01/11/24.
//

import SwiftUI

struct RecipeGridImageView: View {
    var image: String
    
    var body: some View {
        ZStack {
            Image(.lamenFood)
                .resizable()
                .scaledToFill() // Preenche o frame completamente
                .frame(width: 201, height: 201)
                .cornerRadius(27)
                .clipped()
                .rotationEffect(Angle(degrees: 10))
                .padding(.leading, 280)
                .background{
                    Rectangle()
                        .frame(width: 552, height: 166)
                        .cornerRadius(27)
                        .foregroundStyle(Color(red: 0.85, green: 0.31, blue: 0.2))
                }
        }
    }
}

#Preview {
    RecipeGridImageView(image: "feijoada")
}
