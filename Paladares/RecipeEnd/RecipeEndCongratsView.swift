//
//  RecipeEndCongratsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndCongratsView: View {
    
    @Environment(\.sizeCategory) var sizeCategory

    
    var body: some View {
        VStack (spacing: 30){
            Image(.congrats)
            Text("Parabéns!")
                .font(.system(.largeTitle))
                .fontWeight(.bold)
                .kerning(0.4)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorButtonEndView)
        }
    }
}

extension ContentSizeCategory {
    
    var customMinScaleFactorButtonEndView: CGFloat{
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
    RecipeEndCongratsView()
}
