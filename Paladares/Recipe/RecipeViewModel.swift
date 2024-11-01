//
//  RecipeViewModel.swift
//  Paladares
//
//  Created by Thales Araújo on 01/11/24.
//

import Foundation
import SwiftUI

class RecipeViewModel: ObservableObject {
    @Published var selectedRecipe: Recipe?
    
    func selectedRecipe(_ recipe: Recipe) {
        selectedRecipe = recipe // Define a receita selecionada
    }
}
