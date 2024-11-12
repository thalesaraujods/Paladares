//
//  Coordinator.swift
//  Paladares
//
//  Created by Thales Araújo on 03/11/24.
//

import SwiftUI

enum Page: String, Identifiable {
    case home, recipeList, recipeDetail, recipePreparation, congratulations
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
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
        case .recipeList:
            RecipeListView()
        case .recipeDetail:
            RecipeDetailView(recipe: recipeViewModel.selectedRecipe!)
        case .recipePreparation:
            RecipePreparationView()
        case .congratulations:
            CongratulationsView()
        }
        
    }
}
