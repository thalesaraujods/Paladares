//  FormsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

struct FormsView: View {
    
    @State private var quantityChefs: Int = 2
    @State private var quantityConsumers: Int = 1
    @State private var selectedChefs: [Int] = []
    @State private var navigateToNextView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    //quantidade de chefs
                  Text("Chefs:")
                        .position(x: -10, y: 5)
                    
                    HStack {
                        
                        Button(action: {
                            quantityChefs -= 1
                            
                        }, label: {
                            Text("Retirar")
                        })
                        
                        Text("\(quantityChefs)")
                            .font(.largeTitle)
                       
                            .foregroundStyle(.black)
                            .padding(20)
                        
                        Button(action: {
                            quantityChefs += 1
                            
                        }, label: {
                            Text("Adicionar")
                        })

                    }.position(x: 400)
                        //fim da quantidade de chefs
                    
                //quantidade de consumidores
                  Text("Consumers:")
                        .position(x: 10, y: 50)
                    
                    
                    
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
                    
//                    NavigationLink(destination: CountryView(), isActive: $navigateToNextView){
//                        EmptyView()
//                    }.position(x: 590, y: -300)
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
            }
            
            .padding()
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FormsView()
}
