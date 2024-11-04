//
//  Coordinator.swift
//  Paladares
//
//  Created by Thales Araújo on 03/11/24.
//

import SwiftUI

enum Page: String, Identifiable {
    case home, forms, country, recipeList, recipeDetail, recipeStep, recipeEnd
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @ObservedObject var countryViewModel = CountryViewModel.shared
    @ObservedObject var preferencesViewModel = PreferencesViewModel.shared
    @ObservedObject var recipeViewModel = RecipeViewModel.shared
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .home:
            HomeView()
        case .forms:
            FormsView()
        case .country:
            CountryView()
        case .recipeList:
            RecipeListView()
        case .recipeDetail:
            RecipeDetailView(recipe: recipeViewModel.selectedRecipe!)
        case .recipeStep:
            StepView(quantityChefs: 4)
        case .recipeEnd:
            RecipeEndView()
        }
        
    }
    
    
}
