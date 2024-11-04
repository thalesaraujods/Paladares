//
//  FormsImageView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 04/11/24.
//

import SwiftUI

struct FormsImageView: View {
    var body: some View {
        Rectangle()
        .foregroundColor(.clear)
        .frame(width: 250, height: 600)
        .cornerRadius(30)
        .background(
            Image(.imageForms)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 250, height: 600)
        .clipped()
        .cornerRadius(30)
        )
    }
}

#Preview {
    FormsImageView()
}
