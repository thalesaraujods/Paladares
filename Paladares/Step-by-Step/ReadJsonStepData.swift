//
//  ReadJsonStepData.swift
//  Paladares
//
//  Created by Amanda Rabelo on 31/10/24.
//

import Foundation
import Combine

struct Step: Codable, Identifiable {
    var id = UUID()
    var name: String
    var passos: String
    var descricao: String
}

class ReadJsonStepData: ObservableObject {
    @Published var steps: [Step] = []
    
    init() {
        loadStepData()
    }
    
    func loadStepData() {
        guard let url = Bundle.main.url(forResource: "steps", withExtension: "json") else {
            print("Failed to find steps.json")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode([Step].self, from: data)
            self.steps = decodedData
        } catch {
            print("Failed to load data: \(error)")
        }
    }
}
