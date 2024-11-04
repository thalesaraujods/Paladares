//
//  FormsNamesView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct FormsNamesView: View {

    var body: some View {
        
        VStack(spacing: 40) {

                
                Text("Cozinheiros")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -280)
            
            
           
                
                Text("Degustadores")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            
            
           
            
                Text("Nível de Habilidade")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            
            
        }
    }
}

#Preview {
    FormsNamesView()
}

