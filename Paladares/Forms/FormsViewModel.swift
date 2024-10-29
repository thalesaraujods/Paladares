//
//  FormsViewModel.swift
//  Paladares
//
//  Created by Thales Araújo on 28/10/24.
//

import Foundation
import SwiftUI

class PreferencesViewModel: ObservableObject {
    
    @Published var quantitychefs: Int = 2
    @Published var quantityconsumers: Int = 1
    @Published var selectionLevel: String?
    @Published var showsLevels: Bool = false
    
    // Singleton
    static var shared: PreferencesViewModel = PreferencesViewModel()
    
    func incrementChefs() {
        if quantitychefs < 4 { quantitychefs += 1 }
    }
    
    func decrementChefs() {
        if quantitychefs > 2 { quantitychefs -= 1 }
    }
    
    func incrementConsumers() {
        if quantityconsumers < 10 { quantityconsumers += 1 }
    }
    
    func decrementConsumers() {
        if quantityconsumers > 1 { quantityconsumers -= 1 }
    }
    
    func LevelsView() -> some View {
        VStack{
            ForEach(levels, id: \.name){ level in
                HStack{
                    Text(level.name)
                }
                .animation(.none, value: PreferencesViewModel().selectionLevel)
                .onTapGesture {
                    withAnimation(.snappy){
                        self.selectionLevel = level.name
                        self.showsLevels = false
                    }
                }
            }
        }.padding(.horizontal, 15)
    }
}






