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
}

var countries: [Country] = [
    Country(name: "Brasil", flagName: "br"),
    Country(name: "Afeganistão", flagName: "af"),
    Country(name: "África do Sul", flagName: "za"),
    Country(name: "Albânia", flagName: "al"),
    Country(name: "Alemanha", flagName: "de"),
    Country(name: "Bahamas", flagName: "bs"),
    Country(name: "Bélgica", flagName: "be"),
    Country(name: "Bolívia", flagName: "bo"),
    Country(name: "Cabo Verde", flagName: "cv"),
    Country(name: "Camarões", flagName: "cm"),
    Country(name: "Camboja", flagName: "kh"),
    Country(name: "Canadá", flagName: "ca")
]
    
