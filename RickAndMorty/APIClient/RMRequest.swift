//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Oleg Zhovtanskyi on 12/04/2025.
//

import Foundation

/// Object that represent a singlet API Call
final class RMRequest {
    ///Api Constants
    private struct Constants {
        /// Base URL
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// Desire endpoint
    private let endpoint: RMEndpoint
    /// Path components for api, if any
    private let pathComponents: Set<String>
    /// Query arguments for api, if any
    private let queryParameters: [URLQueryItem]
    
    //MARK: - Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value  = $0.value else {return nil}
                return "\($0.name)=\(value) "
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    ///Desire http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parametres
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
