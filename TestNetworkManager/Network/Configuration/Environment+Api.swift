//
//  Environment+Api.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 14/03/2025.
//

private struct Configuration {
    struct Api {
        static var main: MainApiConfiguration = {
           return MainApiConfiguration()
        }()
    }
}
extension Environment {
    var jsonApiConfiguration: JsonPlaceHolderApiConfiguration {
        return Configuration.Api.main
    }
}
