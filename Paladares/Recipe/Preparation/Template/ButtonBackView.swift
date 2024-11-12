//
//  ButtonBackView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct ButtonBackView: View {
    var body: some View {
        Image(systemName: "xmark")
            .resizable()
            .frame(width: 60, height: 60)
            .font(.system(.body))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24).opacity(0.5))
            .cornerRadius(1000)
            .background{
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(Color(red: 0.5, green: 0.5, blue: 0.5).opacity(0.2))
            }
    }
}


#Preview {
    ButtonBackView()
}
