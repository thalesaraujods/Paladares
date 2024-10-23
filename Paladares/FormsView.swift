//
//  FormsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

struct FormsRecipe: View {
    
    @State private var quantityChefs = 2
    @State private var quantityConsumers = 1
    @State private var selectedChef: Int? = nil
    
    var body: some View {
        NavigationView{
            VStack {
                VStack{
                    Stepper("Chefs: \(quantityChefs)", value: $quantityChefs, in: 2...4)
                        .position(x: 190, y: 0)
                    
                    Stepper("Consumers: \(quantityConsumers)", value: $quantityConsumers, in: 1...100)
                        .position(x: 190, y: 50)
                    
                }.padding(400)
                //NavigationLink(destination: CountryView()){
                    Button(action: {
                        selectedChef = Int.random(in: 1...quantityChefs)
                        
                    }, label: {
                        Text("Iniciar")
                        
                    }).position(x: 590, y: -300)
                    
               // }.position(x: 680, y: -300)
                
                if let chef = selectedChef {
                                Text("Chef sorteado: \(chef)")
                                    .font(.headline)
                                    .position(x: 590, y: -200)
                            }
            }
            .padding()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FormsRecipe()
}

