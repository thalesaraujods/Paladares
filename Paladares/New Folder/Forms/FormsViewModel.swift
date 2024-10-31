//
//  FormsViewModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//


import Foundation
import SwiftUI

class PreferencesViewModel: ObservableObject {
    
    @Published var quantitychefs: Int = 2
    @Published var quantityconsumers: Int = 1
    @Published var selectionLevel: RecipeLevel?
    @Published var showsLevels: Bool = false
    
    // Singleton
    static var shared: PreferencesViewModel = PreferencesViewModel()
    
    func incrementChefs() {
        if quantitychefs < 4 { quantitychefs += 1 }
    }
    
    func decrementChefs() {
        if quantitychefs > 2 { quantitychefs -= 1 }
    }
    
    func incrementConsumers() {
        if quantityconsumers < 10 { quantityconsumers += 1 }
    }
    
    func decrementConsumers() {
        if quantityconsumers > 1 { quantityconsumers -= 1 }
    }
    
    func isFormComplete() -> Bool {
            return quantitychefs > 0 && quantityconsumers > 0 && selectionLevel != nil
        }
   
}
