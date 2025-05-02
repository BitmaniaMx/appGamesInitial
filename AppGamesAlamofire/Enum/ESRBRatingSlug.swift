//
//  ESRBRatingSlug.swift
//  AppGames
//
//  Created by Rafael Gonzalez on 01/05/25.
//


enum ESRBRatingSlug: String, Codable {
    case everyone = "everyone"
    case everyone10Plus = "everyone-10-plus"
    case teen = "teen"
    case mature = "mature"
    case adultsOnly = "adults-only"
    case ratingPending = "rating-pending"
}
