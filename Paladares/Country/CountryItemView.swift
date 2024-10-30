//
//  CountryItemView.swift
//  Paladares
//
//  Created by Thales Araújo on 30/10/24.
//

import SwiftUI
import FlagsKit

struct CountryItemView: View {
    
    @State var country: Country
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            FlagView(countryCode: country.flagName, style: .circle)
                .frame(width: 125, height: 125)
                .overlay(
                    RoundedRectangle(cornerRadius: 125)
                        .inset(by: 0.5)
                        .stroke(.black, lineWidth: 1)
                )
            
            Text(country.name)
                .font(Font.custom("SF Pro", size: 24))
                .multilineTextAlignment(.center)
                .frame(width: 159, height: 55, alignment: .center)
                .foregroundColor(.black)
        }
        .frame(width: 159, alignment: .center)
    }
}

#Preview {
    CountryItemView(country: Country(name: "Brasil",flagName: "br"))
}
