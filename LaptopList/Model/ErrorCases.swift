//
//  ErrorCases.swift
//  LaptopList
//
//  Created by Elio Fernandez on 18/02/2024.
//

import Foundation

enum ErrorCases: LocalizedError {
    case invalidUrl
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return "Invalid URL found."
        case .invalidResponse:
            return "Invalid Response found."
        case .invalidData:
            return "Invalid Data found"
        }
    }
}
