//
//  RecipeListTimeView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeListTimeView: View {
    var timer: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 89, height: 29)
                .background(.white.opacity(0.74))
                .cornerRadius(35.5)
            HStack {
                Image(systemName: "clock.fill")
                    .padding(.leading)
                    .frame(width: 23, height: 23)
                    .foregroundColor(Color.corCinza)
                Text(timer)
                    .font(.custom("SF Pro", size: 13))
                    .foregroundColor(Color.corCinza)
                    .fontWeight(.semibold)
                    .padding(.trailing, 5)
                    .frame(width: 60, height: 13)
            }
        }
    }
}

#Preview {
    RecipeListTimeView(timer: "3 horas")
}
