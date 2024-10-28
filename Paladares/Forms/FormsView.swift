//
//  FormsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

struct FormsView: View {
    
    @State private var quantityChefs = 2
    @State private var quantityConsumers = 1
    @State private var selectedChefs: [Int] = []
    @State private var navigateToNextView = false
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Stepper("Chefs: \(quantityChefs)", value: $quantityChefs, in: 2...4)
                        .position(x: 190, y: 0)
                    
                    Stepper("Consumers: \(quantityConsumers)", value: $quantityConsumers, in: 1...100)
                        .position(x: 190, y: 50)
                    
                }.padding(400)
                
                VStack{
                    Button(action: {
                        selectedChefs.removeAll()
                        selectedChefs = (1...quantityChefs).shuffled()
                        navigateToNextView = true
                        
                    }, label: {
                        Text("Iniciar")
                    })
                    .position(x: 590, y: -200)
                    
                    NavigationLink(destination: CountryView(), isActive: $navigateToNextView){
                        EmptyView()
                    }.position(x: 590, y: -300)
                }
                HStack {
                    ForEach(selectedChefs, id: \.self) { chef in
                        Text("\(chef)")
                            .font(.headline)
                            .padding()
                    }
                }
                .position(x: 590, y: -100)
                
                //teste
                HStack {
                    
                    Button(action: {
                        count -= 1
                        
                    }, label: {
                        Text("Retirar")
                    })
                    
                    Text("\(count)")
                        .font(.largeTitle)
                   
                        .foregroundStyle(.black)
                        .padding(20)
                    
                    Button(action: {
                        count += 1
                        
                    }, label: {
                        Text("Adicionar")
                    })

                }.position(x: 590, y: -100)
            }
            
            .padding()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FormsView()
}
