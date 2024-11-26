//
//  SentenceView.swift
//  Paladares
//
//  Created by Amanda Rabelo on 02/11/24.
//

import SwiftUI

struct SentenceView: View {
    var body: some View {
        Text("congratulations_message")
            .font(.system(.body))
            .fontWeight(.bold)
            .foregroundStyle(.corCinza2)
            .kerning(0.4)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    SentenceView()
}
