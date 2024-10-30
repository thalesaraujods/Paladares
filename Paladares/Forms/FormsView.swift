import Foundation
import SwiftUI

struct FormsView: View {
    @StateObject private var preferencesViewModel: PreferencesViewModel = PreferencesViewModel.shared
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(width: 650, height: 300)
                    .foregroundStyle(.white)
                    .shadow(color: .gray, radius: 20)
                
                VStack {
                    VStack {
                        
                        // quantidade de chefs
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
                            }, label: {
                                Text("+")
                                    .font(.largeTitle)
                            })
                        }
                        .position(x: 400)
                        
                        // quantidade de consumidores
                        Text("Consumidores")
                            .position(x: -18, y: 50)
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
                            }, label: {
                                Text("+")
                                    .font(.largeTitle)
                            })
                        }
                        .position(x: 400, y: 40)
                        
                        
                        // nível de receitas
                        HStack{
                            Text("Nível das Receitas")
                                .padding(.top, 80)
                                .padding(.horizontal, -80)
                                .font(.title3)
                            
                            Picker("Selecionar Nível", selection: $preferencesViewModel.selectionLevel) {
                                                     ForEach(levels, id: \.self) { level in
                                                         Text(level.name)
                                                             .tag(level as RecipeLevel?) // Define o nível selecionado
                                                     }
                                                 }
                                                 .pickerStyle(MenuPickerStyle())
                                                 .position(x: 395)
                                                 .padding(.top, 90)
                        }
                    }
                    
                }
                .padding(400)
                .padding(.top, 10)
                .padding()
                
                Button(action: {
                    // Implementar a ação do botão, como navegar para a próxima view
                    print("Avançando para a próxima etapa...")
                }) {
                    Text("Avançar")
                        .font(.custom("SF Pro", size: 25))
                        .padding()
                        .frame(width: 250, height: 75)
                        .background(preferencesViewModel.isFormComplete() ? Color.backBotao : Color.gray)
                        .foregroundColor(preferencesViewModel.isFormComplete() ? Color.palavraBotao : Color.white)
                        .cornerRadius(20)
                        .padding(.horizontal, 40)
                        .padding(.top, 550)
                }
                .disabled(!preferencesViewModel.isFormComplete()) // Desabilita se o formulário não estiver completo
                .frame(width: 750, height: 95)
            }

        }
    }
}

#Preview {
    FormsView()
}
