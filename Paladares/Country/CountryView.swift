//
//  CountryView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import SwiftUI

struct CountryView: View {
    @ObservedObject var viewModel = CountryViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("Selecione o país:")
                .font(.custom("SF Pro", size: 48).bold())
                .frame(width: 593, height: 57, alignment: .leading)
            
            VStack(alignment: .center, spacing: 0) {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 25) {
                        ForEach(countries, id: \.id) { country in
                            Button(action: {
                                viewModel.selectCountry(country)
                            }) {
                                VStack(alignment: .center, spacing: 10) {
                                    Circle()
                                        .fill(viewModel.selectedCountry == country ? Color.blue : Color.gray)
                                        .frame(width: 125, height: 125)
                                    
                                    Text(country.name)
                                        .font(Font.custom("SF Pro", size: 24))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 159, height: 55, alignment: .center)
                                        .foregroundColor(.black)
                                    
                
                                }
                                .frame(width: 159, alignment: .center)
                                .padding(0)
                            }
                        }
                    }
                    .padding()
                }
            }
            .padding(.horizontal, 26)
            .padding(.top, 32)
            .padding(.bottom, 0)
            .frame(width: 763, alignment: .bottom)
            
            
            Spacer()
            
            Button(action: {
                // Ação de confirmação do país selecionado
            }) {
                Text("Confirmar")
                    .font(.custom("SF Pro", size: 25))
                    .padding()
                    .frame(width: 250, height: 75)
                    .background(viewModel.selectedCountry != nil ? Color.blue : Color.gray.opacity(0.5)) // Cor diferenciada quando desabilitado
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal, 40)
            }
            .disabled(viewModel.selectedCountry == nil) // Desabilita o botão se nenhum país estiver selecionado
            .frame(width: 750, height: 95, alignment: .center)
            
        }
        .padding()
    }
}

#Preview {
    CountryView()
}
