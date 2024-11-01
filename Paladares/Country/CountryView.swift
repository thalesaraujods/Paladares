//
//  CountryView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 23/10/24.
//

import SwiftUI
import FlagsKit

struct CountryView: View {
    @ObservedObject var viewModel = CountryViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 29) {
            ForEach(countries, id: \.id) { country in
                CountryItemView(country: country)
            }
        }
        .padding(.horizontal, 50)
        .padding(.bottom, 150)
        .frame(width: 1158, alignment: .center)
    }
}
#Preview {
    CountryView()
}
