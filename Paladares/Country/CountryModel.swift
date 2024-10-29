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
}

var countries: [Country] = [
    Country(name: "Afeganistão"),
    Country(name: "África do Sul"),
    Country(name: "Albânia"),
    Country(name: "Alemanha"),
    Country(name: "Bahamas"),
    Country(name: "Brasil"),
    Country(name: "Bélgica"),
    Country(name: "Bolívia"),
    Country(name: "Cabo Verde"),
    Country(name: "Camarões"),
    Country(name: "Camboja"),
    Country(name: "Canadá"),
    Country(name: "Dinamarca"),
    Country(name: "Dijibuti"),
    Country(name: "Dominica"),
    Country(name: "Egito"),
    Country(name: "El Salvador "),
    Country(name: "Emirados Árabes"),
    Country(name: "Equador"),
    Country(name: "Estados Unidos"),
    Country(name: "Fiji"),
    Country(name: "Filipinas"),
    Country(name: "Finlândia"),
    Country(name: "França"),
    Country(name: "Gana"),
    Country(name: "Geórgia"),
    Country(name: "Guiana"),
    Country(name: "Guiné"),
]
    
