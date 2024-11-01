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
            Image(image)
                .resizable() // Permite que a imagem seja redimensionada
                .scaledToFill() // Preenche o frame completamente
                .frame(width: 317, height: 192)
                .cornerRadius(27)
                .clipped() // Garante que a imagem não ultrapasse as bordas arredondadas
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 317, height: 192)
                .cornerRadius(27)
                .opacity(0.3)
        }
    }
}

#Preview {
    RecipeGridImageView(image: "feijoada")
}
