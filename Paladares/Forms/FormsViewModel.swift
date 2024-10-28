//
//  FormsViewModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import Foundation
import SwiftUI

class PreferencesViewModel: ObservableObject {
    
    @Published var chefs: Int = 1
    @Published var consumers: Int = 1
    @Published var recipeLevel: RecipeLevel = .beginner
    
    func incrementChefs() {
        if chefs < 10 { chefs += 1 }
    }
    
    func decrementChefs() {
        if chefs > 1 { chefs -= 1 }
    }
    
    func incrementConsumers() {
        if consumers < 10 { consumers += 1 }
    }
    
    func decrementConsumers() {
        if consumers > 1 { consumers -= 1 }
    }
}
