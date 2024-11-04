//
//  CountryViewModel.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import Foundation
import SwiftUI

class CountryViewModel: ObservableObject {
    static let shared = CountryViewModel()
    @Published var selectedCountry: Country?
    
    func selectCountry(_ country: Country) {
        selectedCountry = country // Define o país selecionado
    }
}
