//
//  RecipeEndView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
            
        VStack (spacing: 20){
            RecipeEndCongratsView()
                .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            RecipeEndSentenceView()
                .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            
            
            Button(action: {
                coordinator.popToRoot()
            }) {
                RecipeEndButtonView()
                    .padding(.top, 30)
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
            }
           
        }
        .padding(.vertical, 50)
        .padding(.horizontal, 70)
        .background{
            Rectangle()
                .cornerRadius(35)
                .shadow(radius: 10)
                .foregroundStyle(.white)
                .minimumScaleFactor(sizeCategory.customMinScaleFactorIngredientsView)
        }
        .navigationBarBackButtonHidden(true)
    }
}

extension ContentSizeCategory {
    
    var customMinScaleFactorEndView: CGFloat{
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
    RecipeEndView()
}
