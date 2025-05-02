//
//  Endpoint.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 01/05/25.
//


import Foundation

enum Endpoint {
    static let baseURLString = "https://api.rawg.io/api"
    
    case getGames(String)
    
    var url: URL {
        switch self {
        case .getGames (let queryString):
            return URL(string: "\(Endpoint.baseURLString)/games\(queryString)")!
        }
    }
}
