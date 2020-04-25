//
//  ParameterEncoding.swift
//  
//
//  Created by M.Borisov on 21.04.2020.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}
