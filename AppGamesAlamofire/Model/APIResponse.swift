//
//  APIResponse.swift
//  appGamesAlamofireAlamofire
//
//  Created by Rafael Gonzalez on 02/05/25.
//

struct APIResponse : Codable {
    let count : Int
    let next : String?
    let previous : String?
    let results : [Game]
}
