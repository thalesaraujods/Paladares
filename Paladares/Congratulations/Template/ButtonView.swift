//
//  ButtonView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct ButtonView: View {
    
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        Label("Retornar ao Menu", systemImage: "")
            .font(.system(.body))
            .fontWeight(.bold)
            .padding()
            .background(Color(red: 0.3, green: 0.69, blue: 0.31))
            .foregroundColor(Color.white)
            .cornerRadius(64)
            .minimumScaleFactor(sizeCategory.customMinScaleFactorCongratsEndView)
    }
}

extension ContentSizeCategory {
    var customMinScaleFactorCongratsEndView: CGFloat{
        switch self{
        case .extraSmall, .small, .medium:
            return 1.0
        case .large, .extraLarge, .extraExtraLarge:
            return 0.8
        default:
            return 0.6
        }
    }
}

#Preview {
    ButtonView()
}
