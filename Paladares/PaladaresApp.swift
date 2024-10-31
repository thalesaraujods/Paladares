//
//  PaladaresApp.swift
//  Paladares
//
//  Created by Thales Araújo on 18/10/24.
//

import SwiftUI

@main
struct PaladaresApp: App {
    
    var body: some Scene {
        WindowGroup {
            RecipeDetailView(recipe: recipes[0])
        }
    }
}
