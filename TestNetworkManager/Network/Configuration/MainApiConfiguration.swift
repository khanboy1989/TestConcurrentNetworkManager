//
//  MainApiConfiguration.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

struct MainApiConfiguration: JsonPlaceHolderApiConfiguration {
    
    let baseUrl: String = {
       return "https://jsonplaceholder.typicode.com"
    }()
    
    let proxyPath: String = {
        return "/api"
    }()
    
    let apiKey: String = {
       return ""
    }()
}

struct MainApiDevConfiguration: JsonPlaceHolderApiConfiguration {
    let baseUrl: String = {
       return "https://jsonplaceholder.typicode.com"
    }()
    
    let proxyPath: String = {
        return "/api"
    }()
    
    let apiKey: String = {
       return ""
    }()
}
