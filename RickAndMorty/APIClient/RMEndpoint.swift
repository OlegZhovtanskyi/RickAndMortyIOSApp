//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 12/04/2025.
//

import Foundation

/// Represent unique API endpoints
@frozen enum RMEndpoint: String {
    ///Endpoint to get character info
    case character
    ///Endpoint to get location info
    case location
    ///Endpoint to get episode info
    case episode
}
