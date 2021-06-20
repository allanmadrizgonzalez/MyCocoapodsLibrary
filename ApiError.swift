//
//  ApiError.swift
//  MyCocoapodsLibrary
//
//  Created by Allan Madriz on 6/20/21.
//

import Foundation

enum ApiError: Error {
    case requestFailed(description: String)
    case jsonConversionFailure(description: String)
    case invalidData
    case responseUnsuccessful(description: String)
    case jsonParsingFailure
    case noInternet
    case failedSerialization
}
