//
//  File.swift
//  
//
//  Created by Michael Borisov on 25.04.2020.
//

import Foundation

typealias HTTPCode = Int
typealias HTTPCodes = Range<HTTPCode>

public extension HTTPCodes {
    static let success = 200 ..< 300
}
