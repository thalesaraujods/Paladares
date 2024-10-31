//
//  FormsQuantityView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import SwiftUI

struct FormsQuantityView: View {
    
    @StateObject private var preferencesViewModel: PreferencesViewModel = PreferencesViewModel.shared
    var body: some View {
        
        VStack {
            ZStack{
                Rectangle()
                    .frame(width: 170, height: 50)
                    .cornerRadius(15)
                    .shadow(radius: 2)
                    .foregroundStyle(.white)
                
                HStack {
                    Button(action: {
                        preferencesViewModel.decrementChefs()
                    }, label: {
                        Text("-")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    })
                    
                    Text("\(preferencesViewModel.quantitychefs)")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                        .padding(20)
                    
                    Button(action: {
                        preferencesViewModel.incrementChefs()
                    }, label: {
                        Text("+")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    })
                }
            }
        
            ZStack{
                Rectangle()
                    .frame(width: 170, height: 50)
                    .cornerRadius(15)
                    .shadow(radius: 2)
                    .foregroundStyle(.white)
                
                HStack {
                    Button(action: {
                        preferencesViewModel.decrementConsumers()
                    }, label: {
                        Text("-")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    })
                    
                    Text("\(preferencesViewModel.quantityconsumers)")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                        .padding(20)
                    
                    Button(action: {
                        preferencesViewModel.incrementConsumers()
                    }, label: {
                        Text("+")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    })
                }
            }
            
            //Ajustar esse nome do picker que não está aparecendo 
            Picker("Iniciante", selection: $preferencesViewModel.selectionLevel) {
                ForEach(levels, id: \.self) { level in
                    Text(level.name).tag(level) // Define o nível selecionado
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1) // Borda cinza
            )
            .padding()
        }
        //.padding(.leading, 520)
    }
}


#Preview {
    FormsQuantityView()
}
