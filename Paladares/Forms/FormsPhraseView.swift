//
//  FormsPhraseView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 04/11/24.
//

import SwiftUI

struct FormsPhraseView: View {
    var body: some View {
        Text("Ajuste as preferências para personalizar sua experiência e comece a aventura na cozinha!")
        .font(
        Font.custom("SF Pro Rounded", size: 20)
        .weight(.medium)
        )
        .kerning(0.8)
        .foregroundColor(Color(red: 0.53, green: 0.53, blue: 0.55))
        .frame(width: 642, height: 77)
        
    }
}

#Preview {
    FormsPhraseView()
}
