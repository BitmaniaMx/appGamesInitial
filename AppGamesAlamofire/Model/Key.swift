//
//  Key.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 01/05/25.
//

struct Key : Codable {
    var apiKey: String
    
    init(apiKey: String) {
        self.apiKey = apiKey
    }
    
    enum CodingKeys : String, CodingKey {
        case apiKey = "api_key"
    }
    
}

