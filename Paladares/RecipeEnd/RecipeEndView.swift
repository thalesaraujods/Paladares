//
//  RecipeEndView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct RecipeEndView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        ZStack{
            RecipeEndRectangleView()
            VStack (spacing: 20){
                RecipeEndCongratsView()
                RecipeEndSentenceView()
            }
            .padding(.bottom, 80)
            Button(action: {
                coordinator.popToRoot()
            }) {
                RecipeEndButtonView()
                    .padding(.top, 400)
            }
            
        }
    }
}

#Preview {
    RecipeEndView()
}
