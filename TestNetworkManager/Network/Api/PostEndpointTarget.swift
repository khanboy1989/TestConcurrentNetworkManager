//
//  PostEndpointTarget.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 14/03/2025.
//

import ConcurrentNetworkManager
import Foundation

enum PostEndpointTarget {
    case posts
}

extension PostEndpointTarget: EndpointTargetType {
    var method: HTTPMethod {
        switch self {
        case .posts:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .posts:
            return "/posts"
        }
    }
    
    var baseURL: String {
        let proxyPath: String = Environment.current.jsonApiConfiguration.proxyPath
        return Environment.current.jsonApiConfiguration.baseUrl + proxyPath
    }
    
    var headers: [String : String] {
        return [:]
    }
    
    var urlParameters: [String : any CustomStringConvertible] {
        return [:]
    }
    
    var body: Data? {
        switch self {
        case .posts:
            return nil
        }
    }
    
    var apiVersion: String {
        "/v1"
    }
}
