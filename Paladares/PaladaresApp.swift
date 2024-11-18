//
//  PaladaresApp.swift
//  Paladares
//
//  Created by Thales Araújo on 18/10/24.
//

import SwiftUI

@main
struct PaladaresApp: App {
    init(){
        UIBarButtonItem.appearance().tintColor = UIColor.buttonsRecipeList
    }
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
