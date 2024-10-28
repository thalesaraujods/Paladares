//
//  FormsModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import Foundation

enum RecipeLevel: String, CaseIterable, Identifiable {
    case beginner = "Iniciante"
    case advanced = "Avançado"
    
    var id: String { self.rawValue }
}
