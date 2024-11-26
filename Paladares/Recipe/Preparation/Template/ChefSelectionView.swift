//
//  ChefSelectionView.swift
//  Paladares
//
//  Created by Thales Araújo on 12/11/24.
//

import SwiftUI

struct ChefSelectionView: View {
    @Binding var selectedChefId: Int // Chef atualmente selecionado
    @Binding var shadowColor: Color
    let preparationMethods: [ChefPreparation] // Lista de chefs e seus métodos de preparo
    
    // dimensoes
    let widthScreen = UIScreen.main.bounds.width
    let heightScreen = UIScreen.main.bounds.height
    
    let colorsHats: [Color] = [.blue, .green, .red, .yellow] // Cores para cada chef
    
    let chefsShadowsColors: [Color] = [.colorChef1, .colorChef2, .colorChef3, .colorChef4]
    let chefsIcons: [Image] = [Image(.iconChef1), Image(.iconChef2), Image(.iconChef3), Image(.iconChef4)]
    
    var body: some View {
        VStack (spacing: heightScreen*0.0098) {
            ForEach(preparationMethods.indices, id: \.self) { index in
                let chef = preparationMethods[index]
                let chefColor = chefsShadowsColors[index % chefsShadowsColors.count] // Garante que cada chef tenha uma cor
                let chefIcon = chefsIcons[index % chefsIcons.count] // Garante que cada chef tenha uma imagem correspondente
                
                Button(action: {
                    selectedChefId = chef.chefId // Atualiza o chef selecionado
                    shadowColor = chefColor // Atualiza a cor da sombra com a cor do chef
                }) {
                    VStack (spacing: heightScreen*0.0049) {
                        chefIcon
                            .resizable()
                            .scaledToFit()
                            .frame(width: widthScreen*0.0827, height: heightScreen*0.1104)
                            .shadow(color: selectedChefId == chef.chefId ? chefColor : .clear, radius: selectedChefId == chef.chefId ? 15 : 0)
                        Text("recipe_preparation_button_chef \(chef.chefId)")
                            .foregroundColor(.black)
                            .font(.custom("SF Pro", size: 24, relativeTo: .body))
                    }
                    .scaleEffect(selectedChefId == chef.chefId ? 1.10 : 1.0) // Aplica o efeito de escala
                    .animation(.spring(), value: selectedChefId) // Animação suave para a transição de tamanho
                }
            }
        }
        .frame(width: widthScreen*0.1794, height: heightScreen*0.7695)
        .background(
            Rectangle()
                .frame(width: widthScreen*0.1794, height: heightScreen*0.7695)
                .cornerRadius(40)
                .foregroundStyle(.white)
                .shadow(color: shadowColor, radius: 10)
        )
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedChefId: Int = 0
    
    ChefSelectionView(
        selectedChefId: $selectedChefId,
        shadowColor: .constant(.gray),
        preparationMethods: mockRecipeLamen.preparationMethods
    )
}

