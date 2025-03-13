//
//  Environment.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

enum Environment {
    case debug
    case release
    static var current: Environment = {
        let result: Environment
        #if DEBUG
        result = .debug
        #else
        result = .release
        #endif
        return result
    }()
}
