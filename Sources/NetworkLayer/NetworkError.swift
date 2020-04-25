//
//  NetworkError.swift
//  
//
//  Created by M.Borisov on 21.04.2020.
//

import Foundation

public enum NetworkError: Error, LocalizedError {
    case urlError(URLError)
    case responseError(Int)
    case decodingError(DecodingError)
    case genericError
    case unexpectedResponse
    
    var localizedDescription: String {
        switch self {
        case .urlError(let error):
            return error.localizedDescription
        case .decodingError(let error):
            return error.localizedDescription
        case .responseError(let status):
            return "Bad response code: \(status)"
        case .genericError:
            return "An unknown error has been occured"
        case .unexpectedResponse:
            return "Unexpected response from the server"
        }
    }
}
