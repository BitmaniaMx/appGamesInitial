//
//  Game.swift
//  appGamesAlamofireAlamofire
//
//  Created by Rafael Gonzalez on 02/05/25.
//

struct Game : Codable, Identifiable {
    let id : Int
    let slug : String
    let name : String
    let released : String
    let backgroundImage : String
    let rating : Double
    let esrbRating : ESRBRating?
 
    enum CodingKeys : String, CodingKey {
        case id, slug, name, released,rating
        case backgroundImage = "background_image"
        case esrbRating = "esrb_rating"
    }
    
}
