//
//  NetworkResponse.swift
//  Malt
//
//  Created by Liana Haque on 5/5/21.
//

enum NetworkResponse<T> {
    case success(T)
    case failure(NetworkError)
}
