//
//  RecipeListView.swift
//  Paladares
//
//  Created by Thales Araújo on 31/10/24.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var viewModel = RecipeViewModel()
    
    let columns = [
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70),
        GridItem(.flexible(), spacing: 70)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(recipes, id: \.id) { recipe in
                RecipeGridView(recipe: recipe)
            }
        }
        .padding()
        .frame(width: 1024)
    }
}

#Preview {
    RecipeListView()
}
