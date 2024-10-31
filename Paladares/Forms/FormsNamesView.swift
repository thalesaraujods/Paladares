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
        
        VStack {

            HStack{
                Image(.cozinheiroForms)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -350)
                
                Text("Cozinheiros")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -280)
            }
            
            HStack{
                Image(systemName: "fork.knife")
                    .resizable()
                    .frame(width: 30, height: 40)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -330)
                
                Text("Degustadores")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            }
            
            HStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .colorMultiply(.black)
                    .padding(.bottom, 40)
                    .padding(.horizontal, -330)
            
                Text("Nível de Habilidade")
                    .font(.system(size: 33))
                    .padding(.bottom, 40)
                    .padding(.horizontal, -275)
            }
            
        }
    }
}

#Preview {
    FormsNamesView()
}

