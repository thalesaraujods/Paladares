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
                            
                            Spacer()
                            
                            DropDownLevel(
                                hint: "Select",
                                levels: levels
                                
                            )
                            .position(x: 370)
                            .padding(.leading, 20)
                            .padding(.top, 80)
                        }
                        
                        
                    }
                    
                    
                }
                .padding(400)
                .padding(.top, 10)
                .padding()
            }
            
            Button(action: {
                                   // Ação de confirmação do forms preenchido
                               }) {
                                   Text("Avançar")
                                       .font(.custom("SF Pro", size: 25))
                                       .padding()
                                       .frame(width: 250, height: 75)
                                       .background(preferencesViewModel.isFormComplete() ? Color.blue : Color.gray)
                                       .foregroundColor(.white)
                                       .cornerRadius(20)
                                       .padding(.horizontal, 40)
                               }
                               .disabled(!preferencesViewModel.isFormComplete())
                               .frame(width: 750, height: 95, alignment: .center)
                               .position(x: 600, y: -200)
        }
    }
}

//consertar essa subida do dropdownlevel

struct DropDownLevel: View {
    var hint: String
    var levels: [RecipeLevel]
    @State private var selectedLevel: RecipeLevel?
    @Environment(\.colorScheme) private var colorScheme
    @State private var showsLevels = false
    
    var body: some View {
        ZStack{
            VStack {
                
                HStack{
                    Text(selectedLevel?.name ?? hint)
                        .foregroundColor(selectedLevel == nil ? .gray : .primary)
                        .onTapGesture {
                            showsLevels.toggle()
                        }
                    
                    Image(systemName: "chevron.down")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .rotationEffect(.init(degrees: showsLevels ? -180 : 0))
                }
                
                if showsLevels {
                    VStack {
                        ForEach(levels, id: \.self) { level in
                            Text(level.name)
                                .onTapGesture {
                                    selectedLevel = level
                                    showsLevels = false
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(5)
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
            .padding()
            .background((colorScheme == .dark ? Color.black : Color.white).shadow(.drop(color: .primary.opacity(0.15), radius: 4)))
        }
    }
}


#Preview {
    FormsView()
}
