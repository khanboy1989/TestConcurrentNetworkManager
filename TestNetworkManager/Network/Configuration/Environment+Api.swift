//
//  Environment+Api.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 14/03/2025.
//
import Foundation
import ConcurrentNetworkManager

private struct Configuration {
    struct Api {
        static var main: MainApiConfiguration = {
           return MainApiConfiguration()
        }()
        
        static var dev: MainApiDevConfiguration = {
            return MainApiDevConfiguration()
        }()
    }
}
extension Environment {
    var jsonApiConfiguration: JsonPlaceHolderApiConfiguration {
        switch Environment.current {
        case .debug:
            return Configuration.Api.dev
        case .release:
            return Configuration.Api.main
        }
    }
}
