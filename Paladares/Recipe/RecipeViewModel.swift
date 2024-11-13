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
    
//    func loadRecipes() {
//        guard let url = Bundle.main.url(forResource: "recipes", withExtension: "json") else {
//            print("Failed to find recipes.json")
//            return
//        }
//        
//        do {
//            let data = try Data(contentsOf: url)
//            let decoderData = try JSONDecoder().decode([Recipe].self, from: data)
//            self.recipes = decoderData
//        } catch {
//            print("Failed to load data: \(error)")
//        }
//    }
    
    func loadRecipes() {
        // Detecta o idioma atual do dispositivo
        let currentLanguage = Locale.current.language.languageCode?.identifier ?? "pt"
        
        // Monta o nome do arquivo JSON com o prefixo "recipe-" e o código do idioma
        let fileName = "recipes-\(currentLanguage)"
        
        // Tenta localizar o arquivo JSON no bundle
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                // Lê o arquivo JSON
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                // Decodifica os dados em uma lista de receitas
                let decoderData = try JSONDecoder().decode([Recipe].self, from: data)
                self.recipes = decoderData
                print("Loaded \(fileName).json successfully.")
            } catch {
                print("Error loading the localized JSON: \(error)")
            }
        } else {
            print("No localized JSON found for \(fileName).")
        }
    }

}


