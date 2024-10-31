//
//  RecipeListTimeView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeListTimeView: View {
    @Binding var timer: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black) //clear
                .background(.white.opacity(0.74))
                .cornerRadius(35.5)
                .frame(width: 218, height: 71, alignment: .center)
//            HStack {
//                Text(timer)
//                    .font(.custom("SF Pro", size: 24))
//                    .font(.body)
//                    .fontWeight(.semibold)
//                    .foregroundColor(Color("corCinza"))
//                    .multilineTextAlignment(.center)
//                    .frame(width: 10, height: 10, alignment: .center)
//            }
        }
        frame(width: 89, height: 29)
        
    }
}

#Preview {
    @Previewable @State var timer: String = "2 horas"
    
    RecipeListTimeView(timer: $timer)
}
