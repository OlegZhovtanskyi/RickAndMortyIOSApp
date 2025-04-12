//
//  RMService.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 12/04/2025.
//

import Foundation

/// Primary API service object to get Rick&Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatised constructor
    private init() {}
    
    
    /// Send Rick&Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
