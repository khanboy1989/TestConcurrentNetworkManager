//
//  ContentView.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

import SwiftUI
import ConcurrentNetworkManager

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
                    VStack(alignment: .leading) {
                        Text("User ID: \(post.userId)")
                        Text("Title: \(post.title)")
                    }
                }
            }
        }
        .padding()
        .task {
            do {
                posts = try await self.postsRepository.getPosts()
            } catch {
                print("Error = \(error)")
            }
        }
    }
}

#Preview {
    ContentView()
}

