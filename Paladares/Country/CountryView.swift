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
        VStack {
            VStack(alignment: .center, spacing: 25) {
                LazyVGrid(columns: columns, spacing: 25) {
                    ForEach(countries, id: \.id) { country in
                        Button(action: {
                            viewModel.selectCountry(country)
                        }) {
                            VStack(alignment: .center, spacing: 10) {
                                FlagView(countryCode: country.flagName, style: .circle)
                                    .frame(width: 125, height: 125)
                                
                                Text(country.name)
                                    .font(Font.custom("SF Pro", size: 24))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 159, height: 55, alignment: .center)
                                    .foregroundColor(.black)
                                
                                
                            }
                            .frame(width: 159, alignment: .center)
                        }
                    }
                }
                .padding()
            }
            .frame(width: 1158, alignment: .center)
            .padding(.horizontal, 104)
            .padding(.bottom, 100)
        }
        .padding()
    }
}

#Preview {
    CountryView()
}
