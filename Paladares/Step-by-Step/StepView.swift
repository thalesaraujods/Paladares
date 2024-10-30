//
//  StepView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 30/10/24.
//

import SwiftUI

struct StepView: View {
    let quantityChefs: Int
    
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
                    ForEach(0..<quantityChefs, id: \.self) { _ in
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .padding(5)
                    }
                }
            }
        }
    }
}


#Preview {
    StepView(quantityChefs: 2)
}


