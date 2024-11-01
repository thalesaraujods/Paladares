//
//  CountryView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import SwiftUI
import FlagsKit

struct CountryView: View {
    @ObservedObject var viewModel = CountryViewModel()
    @State private var isActive = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 25) {
                LazyVGrid(columns: columns, spacing: 29) {
                    ForEach(countries, id: \.id) { country in
                        
                        //ajeitar depois pra onde essa navegação vai
                        //tem um bug, precisa consertar
                        NavigationLink(destination: RecipeDetailView(recipe: recipes[0]),isActive: $isActive){
                            Button(action: {
                                viewModel.selectCountry(country)
                                isActive = true
                            }) {
                                CountryItemView(country: country)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 50)
        }
        .navigationBarTitle("Sua lista está pronta!")
        .padding()
        .frame(width: 1158, alignment: .center)
    }
}

#Preview {
    CountryView()
}
