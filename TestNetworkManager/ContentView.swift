//
//  ContentView.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

import SwiftUI
import ConcurrentNetworkManager

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
        return "https://jsonplaceholder.typicode.com"
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
        "/api/v1"
    }
}


struct ContentView: View {
    private let postsRepository: any PostsRepositoryProtocol
    @State private var posts: [PostDTO] = []
    
    init(postsRepository: any PostsRepositoryProtocol = PostsRepositoryImpl()) {
        self.postsRepository = postsRepository
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(posts, id: \.id) { post in
                    Text("\(post.title)")
                }
            }
        }
        .padding()
        .task {
            do {
                posts = try await self.postsRepository.getPosts()
            } catch {
                print("Error = \(error.localizedDescription)")
            }
        }
    }
}

#Preview {
    ContentView()
}

