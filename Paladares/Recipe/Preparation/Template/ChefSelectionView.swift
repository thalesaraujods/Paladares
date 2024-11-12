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
    
    let colorsHats: [Color] = [.blue, .green, .red, .yellow] // Cores para cada chef
    
    let chefsShadowsColors: [Color] = [.colorChef1, .colorChef2, .colorChef3, .colorChef4]
    let chefsIcons: [Image] = [Image(.iconChef1), Image(.iconChef2), Image(.iconChef3), Image(.iconChef4)]
    
    var body: some View {
        VStack (spacing: 25) {
            ForEach(preparationMethods.indices, id: \.self) { index in
                let chef = preparationMethods[index]
                let chefColor = chefsShadowsColors[index % chefsShadowsColors.count] // Garante que cada chef tenha uma cor
                let chefIcon = chefsIcons[index % chefsIcons.count] // Garante que cada chef tenha uma imagem correspondente
                
                Button(action: {
                    selectedChefId = chef.chefId // Atualiza o chef selecionado
                    shadowColor = chefColor // Atualiza a cor da sombra com a cor do chef
                }) {
                    VStack (spacing: 15) {
                        chefIcon
                            .resizable()
                            .scaledToFit()
                            .frame(width: 102, height: 102)
                            .shadow(color: selectedChefId == chef.chefId ? chefColor : .clear, radius: selectedChefId == chef.chefId ? 15 : 0)
                        Text("Chef \(chef.chefId)")
                            .foregroundColor(.black)
                            .font(.caption)
                    }
                    .scaleEffect(selectedChefId == chef.chefId ? 1.05 : 1.0) // Aplica o efeito de escala
                    .animation(.spring(), value: selectedChefId) // Animação suave para a transição de tamanho
                }
            }
        }
        .background(
            Rectangle()
                .frame(width: 245, height: 788)
                .cornerRadius(40)
                .foregroundStyle(.white)
                .shadow(color: shadowColor, radius: 10)
        )
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedChefId: Int = 0
    
    ChefSelectionView(selectedChefId: $selectedChefId, shadowColor: .constant(.gray), preparationMethods: [
        ChefPreparation(chefId: 1, steps: [
            Step(stepNumber: "Passo 1", description: "Corte os pães ao meio, mas sem separar completamente as metades."),
            Step(stepNumber: "Passo 2", description: "Passe manteiga nas duas metades internas de cada pão."),
            Step(stepNumber: "Passo 3", description: "Aqueça levemente os pães em uma frigideira para dourar a manteiga.")
        ]),
        ChefPreparation(chefId: 2, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o tucumã em tiras finas e uniformes."),
            Step(stepNumber: "Passo 2", description: "Coloque as tiras de tucumã em uma tigela e reserve.")
        ]),
        ChefPreparation(chefId: 3, steps: [
            Step(stepNumber: "Passo 1", description: "Corte o queijo coalho em fatias e grelhe até dourar dos dois lados."),
            Step(stepNumber: "Passo 2", description: "Coloque o queijo grelhado em um prato e reserve.")
        ]),
        ChefPreparation(chefId: 4, steps: [
            Step(stepNumber: "Passo 1", description: "Descasque as bananas e corte-as em fatias finas."),
            Step(stepNumber: "Passo 2", description: "Em uma frigideira, aqueça as fatias de banana até ficarem levemente douradas."),
            Step(stepNumber: "Passo 3", description: "Monte os pães, adicionando os ingredientes preparados pelos outros chefs: tiras de tucumã, queijo grelhado e fatias de banana."),
            Step(stepNumber: "Passo 4", description: "Leve os pães montados à frigideira quente para aquecer por 2 minutos de cada lado, garantindo que todos os ingredientes fiquem bem integrados.")
        ])
    ])
}

