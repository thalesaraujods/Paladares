//
//  CountryModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import Foundation
import SwiftUI

struct Country: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let flagName: String
    let blocked: Bool
}

var countries: [Country] = [
    Country(name: "Brasil", flagName: "br", blocked: false),
    Country(name: "Afeganistão", flagName: "af", blocked: true),
    Country(name: "África do Sul", flagName: "za", blocked: true),
    Country(name: "Albânia", flagName: "al", blocked: true),
    Country(name: "Alemanha", flagName: "de", blocked: true),
    Country(name: "Bahamas", flagName: "bs", blocked: true),
    Country(name: "Bélgica", flagName: "be", blocked: true),
    Country(name: "Bolívia", flagName: "bo", blocked: true),
    Country(name: "Cabo Verde", flagName: "cv", blocked: true),
    Country(name: "Camarões", flagName: "cm", blocked: true),
    Country(name: "Camboja", flagName: "kh", blocked: true),
    Country(name: "Canadá", flagName: "ca", blocked: true)
]
    
