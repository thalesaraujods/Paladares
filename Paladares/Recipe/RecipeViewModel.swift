//
//  RecipeViewModel.swift
//  Paladares
//
//  Created by Thales Araújo on 01/11/24.
//

import Foundation
import Combine
import SwiftUI

class RecipeViewModel: ObservableObject {
    static let shared = RecipeViewModel()
    let dataLoader = ReadData()
    @Published var selectedRecipe: Recipe?
    
    func modifySelectedRecipe(_ recipe: Recipe) {
        selectedRecipe = recipe
    }
}

class ReadData: ObservableObject {
    static let shared = ReadData()
    @Published var recipes: [Recipe] = []
    
    init() {
        loadRecipes()
    }
    
    func loadRecipes() {
        guard let url = Bundle.main.url(forResource: "recipes", withExtension: "json") else {
            print("Failed to find recipes.json")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoderData = try JSONDecoder().decode([Recipe].self, from: data)
            self.recipes = decoderData
        } catch {
            print("Failed to load data: \(error)")
        }
    }
}


