//
//  PostsJsonPlaceHolderApiConfiguration.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

protocol JsonPlaceHolderApiConfiguration {
    var baseUrl: String { get }
    var proxyPath: String { get }
    var apiKey: String { get }
}
