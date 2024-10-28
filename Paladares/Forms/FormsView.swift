//  FormsView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

struct FormsView: View {
    
    //    @State private var selectedChefs: [Int] = []
    //    @State private var navigateToNextView = false
    @StateObject private var preferencesViewModel: PreferencesViewModel = PreferencesViewModel.shared
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Rectangle()
                    .frame(width: 650, height: 300)
                    .foregroundStyle(.white)
                    .shadow(color: .gray, radius: 20)
                    
                
                VStack {
                    VStack {
                        //quantidade de chefs
                        Text("Chefs de cozinha")
                            .padding(.bottom, -20)
                            .padding(.horizontal, -270)
                            .font(.title3)
                        
                        HStack {
                            
                            Button(action: {
                                preferencesViewModel.decrementChefs()
                                
                            }, label: {
                                Text("-")
                                    .font(.largeTitle)
                            })
                            
                            Text("\(preferencesViewModel.quantitychefs)")
                                .font(.largeTitle)
                            
                                .foregroundStyle(.black)
                                .padding(20)
                            
                            Button(action: {
                                preferencesViewModel.incrementChefs()
                                print()
                                
                            }, label: {
                                Text("+")
                                    .font(.largeTitle)
                            })
                            
                        }.position(x: 400)
                        //fim da quantidade de chefs
                        
                        //quantidade de consumidores
                        Text("Consumidores")
                            .position(x: -20, y: 50)
                            .font(.title3)
                        
                        HStack {
                            
                            Button(action: {
                                preferencesViewModel.decrementConsumers()
                                
                            }, label: {
                                Text("-")
                                    .font(.largeTitle)
                            })
                            
                            Text("\(preferencesViewModel.quantityconsumers)")
                                .font(.largeTitle)
                            
                                .foregroundStyle(.black)
                                .padding(20)
                            
                            Button(action: {
                                preferencesViewModel.incrementConsumers()
                                print()
                                
                            }, label: {
                                Text("+")
                                    .font(.largeTitle)
                            })
                            
                        }.position(x: 400, y: 40)
                        //fim da quantidade de consumers
                        
                        //início do nível de receitas
                        Text("Nível das Receitas")
                            .position(x: -3, y: 95)
                            .font(.title3)
                        
                        HStack {
                            
                            //ver na view model sobre os tipos de níveis
                        }
                        
                    }.padding(400)
                        .padding(.bottom, 100)
                    
                    VStack{
                        //                    Button(action: {
                        //                        selectedChefs.removeAll()
                        //                        selectedChefs = (1...quantityChefs).shuffled()
                        //                        navigateToNextView = true
                        //
                        //                    }, label: {
                        //                        Text("Iniciar")
                        //                    })
                        //                    .position(x: 590, y: -200)
                        
                        //                    NavigationLink(destination: CountryView(), isActive: $navigateToNextView){
                        //                        EmptyView()
                        //                    }.position(x: 590, y: -300)
                    }
                    //                HStack {
                    //                    ForEach(selectedChefs, id: \.self) { chef in
                    //                        Text("\(chef)")
                    //                            .font(.headline)
                    //                            .padding()
                    //                    }
                    //                }
                    .position(x: 590, y: -100)
                    
                    //teste
                }
                
                .padding()
            }
            // .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
#Preview {
    FormsView()
}
