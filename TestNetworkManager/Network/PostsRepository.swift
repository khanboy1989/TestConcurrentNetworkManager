//
//  PostsRepository.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 14/03/2025.
//

import Foundation
import ConcurrentNetworkManager

/// Protocol defining the operations for managing posts and uploading images.
protocol PostsRepositoryProtocol: Sendable {
    /// Fetches posts from the API.
    /// - Returns: An array of `PostDTO` objects.
    /// - Throws: An error if the request fails.
    func getPosts() async throws -> [PostDTO]
}

final class PostsRepositoryImpl: PostsRepositoryProtocol {
    private let apiClient: any IApiClient
    private typealias apiEndpoint = PostEndpointTarget
    
    init(apiClient: any IApiClient = ApiClientImpl()) {
        self.apiClient = apiClient
    }
    
    func getPosts() async throws -> [PostDTO] {
        return try await apiClient.request(apiEndpoint.posts)
    }
}
