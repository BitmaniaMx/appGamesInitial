//
//  ESRBRating.swift
//  appGamesAlamofireAlamofire
//
//  Created by Rafael Gonzalez on 02/05/25.
//


struct ESRBRating: Codable, Identifiable {
    let id : Int
    let slug : ESRBRatingSlug
    let name : ESRBRatingName
}
