//
//  JSONParameterEncoder.swift
//  
//
//  Created by M.Borisov on 21.04.2020.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            let error = DecodingError.dataCorrupted(DecodingError.Context(
              codingPath: [],
              debugDescription: "The given data was not valid JSON.",
              underlyingError: error)
            )
            throw NetworkError.decodingError(error)
        }
    }
}
