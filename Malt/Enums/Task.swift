//
//  Task.swift
//  Malt
//
//  Created by Liana Haque on 5/5/21.
//

typealias Parameters = [String: Any]

enum Task {
    case requestPlain
    case requestParameters(Parameters)
}
