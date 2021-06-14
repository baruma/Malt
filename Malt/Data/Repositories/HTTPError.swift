//
//  RepositoryError.swift
//  Malt
//
//  Created by Liana Haque on 5/16/21.
//

import Foundation

enum HTTPError: LocalizedError {
    case invalidResponse
    case invalidStatusCode
    case noData
}
