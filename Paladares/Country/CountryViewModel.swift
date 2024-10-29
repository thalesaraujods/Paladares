//
//  CountryViewModel.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

class CountryViewModel: ObservableObject {
    @Published var selectedCountry: Country?
    
    func selectCountry(_ country: Country) {
        if selectedCountry == country {
            selectedCountry = nil // Desmarca o país se já estiver selecionado
        } else {
            selectedCountry = country
        }
    }
}
