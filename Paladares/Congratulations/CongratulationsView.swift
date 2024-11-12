//
//  CongratulationView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct CongratulationsView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack{
            VStack (spacing: 20){
                CongratsView()
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                SentenceView()
                    .minimumScaleFactor(sizeCategory.customMinScaleFactorDetailView)
                
                Button(action: {
                    coordinator.popToRoot()
                }) {
                    ButtonView()
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
        .frame(width: 700)
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
    CongratulationsView()
}
