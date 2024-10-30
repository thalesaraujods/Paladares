//
//  StepView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import SwiftUI

struct StepView: View {
    let quantityChefs: Int
    
    let colors: [Color] = [.green, .red, .yellow, .blue]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(width: 240, height: 600)
                    .cornerRadius(40)
                    .foregroundStyle(.white)
                    .shadow(color: .gray, radius: 10)
                    .padding(.top, 70)
                    .padding(.horizontal, -520)
                
                VStack {
                    ForEach(0..<quantityChefs, id: \.self) { index in
                        Circle()
                            .fill(colors[index % colors.count])
                            .frame(width: 85, height: 85)
                            .padding(7)
                        Text("Chef \(index + 1)")
                    }
                }
                .padding(.top, 70)
                .padding(.horizontal, -450)
            }
        }
    }
}


#Preview {
    StepView(quantityChefs: 4)
}


