//
//  ProviderProtocol.swift
//  Malt
//
//  Created by Liana Haque on 5/5/21.
//

protocol ProviderProtocol {
    func request<T>(type: T.Type, service: ServiceProtocol, completion: @escaping (NetworkResponse<T>) -> ()) where T: Decodable
}
